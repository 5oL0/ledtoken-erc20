import hashlib
import time
class Block(object):
    def __init__(self, index, proof_number, previous_hash, data, timestamp=None):
        self.index = index
        self.proof_number = proof_number
        self.previous_hash = previous_hash
        self.data = data
        self.timestamp = timestamp or time.time()
    @property
    def compute_hash(self):
        string_block = "{}{}{}{}{}".format(self.index, self.proof_number, self.previous_hash, self.data, self.timestamp)
        return hashlib.sha256(string_block.encode()).hexdigest()
    def __repr__(self):
        return "{} - {} - {} - {} - {}".format(self.index, self.proof_number, self.previous_hash, self.data, self.timestamp)
class BlockChain(object):
    def __init__(self):
        self.chain = []
        self.current_data = []
        self.nodes = set()
        self.build_genesis()
    def build_genesis(self):
        self.build_block(proof_number=0, previous_hash=0)
    def build_block(self, proof_number, previous_hash):
        block = Block(
            index=len(self.chain),
            proof_number=proof_number,
            previous_hash=previous_hash,
            data=self.current_data
        )
        self.current_data = []
        self.chain.append(block)
        return block
    @staticmethod
    def confirm_validity(block, previous_block):
        if previous_block.index + 1 != block.index:
            return False
        elif previous_block.compute_hash != block.previous_hash:
            return False
        elif block.timestamp <= previous_block.timestamp:
            return False
        return True
    def get_data(self, sender, receiver, amount):
        self.current_data.append({
            'sender': sender,
            'receiver': receiver,
            'amount': amount
        })
        return True
    @staticmethod
    def proof_of_work(last_proof):
        pass
    @property
    def latest_block(self):
        return self.chain[-1]
    def chain_validity(self):
        pass
    def block_mining(self, details_miner):
        self.get_data(
            sender="0", #it implies that this node has created a new block
            receiver=details_miner,
            quantity=1, #creating a new block (or identifying the proof number) is awared with 1
        )
        last_block = self.latest_block
        last_proof_number = last_block.proof_number
        proof_number = self.proof_of_work(last_proof_number)
        last_hash = last_block.compute_hash
        block = self.build_block(proof_number, last_hash)
        return vars(block)
    def create_node(self, address):
        self.nodes.add(address)
        return True
    @staticmethod
    def get_block_object(block_data):
        return Block(
            block_data['index'],
            block_data['proof_number'],
            block_data['previous_hash'],
            block_data['data'],
            timestamp=block_data['timestamp']
        )
blockchain = BlockChain()
print("GET READY MINING IS ABOUT TO START")
print(blockchain.chain)
last_block = blockchain.latest_block
last_proof_number = last_block.proof_number
proof_number = blockchain.proof_of_work(last_proof_number)
blockchain.get_data(
    sender="0", #this means that this node has constructed another block
    receiver="Ledtoken.crypto",
    amount=1, #building a new block (or figuring out the proof number) is awarded with 1
)
last_hash = last_block.compute_hash
block = blockchain.build_block(proof_number, last_hash)
print("MINING HAS BEEN SUCCESSFUL!")
print(blockchain.chain)
