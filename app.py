import main

from flask import Flask, request, json

app = Flask(__name__)


@app.route('/v1/ai')
def hello_world():
    # 获取请求参数
    params = request.args.get('param')
    gpt_api = main.GptApi
    msg = gpt_api.getGPT(gpt_api, params)
    return msg


if __name__ == '__main__':
    app.run()
