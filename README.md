## 基于Flask的chatGPT-API项目

Python3 启动运行

### 依赖
```
pip3 install -r requirements.txt
```
### 配置

```
mv config.py.template  config.py
// 编译文件，维护用户Token 和 OpenAI Key
// 修改自己个OpenAI Key
```
### 启动
```shell
python3 app.py
```
### 访问
```shell
http://127.0.0.1:5000/v1/ai?param={param}
```