import wikipedia
import wolframalpha

while True:
    my_input = input("Question: ")

    try:
        #wolframalpha
        app_id = "4A5622-K54WL2K5W5"
        client = wolframalpha.Client(app_id)
        res = client.query(my_input)
        answer = next(res.results).text
        print(answer)
    except:
        #wikipedia
        print(wikipedia.summary(my_input))
