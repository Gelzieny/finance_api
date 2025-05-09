from fastapi import FastAPI
from fastapi.responses import HTMLResponse

app = FastAPI(
  title="Api Financeira",
  description=""
)

######################### ROUTERS #####################
from src.controller.users_controller import *

app.include_router(usuarios_controller)



@app.get("/apiname", include_in_schema=False, response_class=HTMLResponse)
async def apiname() -> str:
  return "Api Financeira"


if __name__ == "__main__":
  import uvicorn
  uvicorn.run("manage:app", port=5029, host="127.0.0.1",  log_level="info", reload=True)