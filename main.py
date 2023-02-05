import openai
import config as conf

openai.api_key = conf.API_KEY


class GptApi:

    def __init__(self):
        pass

    def getGPT(self, prompt):
        res = openai.Completion.create(
            model="text-davinci-003",
            prompt=prompt.replace("@ChatGPT", ""),
            temperature=0.7,
            max_tokens=3000,
            top_p=1,
            frequency_penalty=0,
            presence_penalty=0
        )
        return res.choices[0].text
