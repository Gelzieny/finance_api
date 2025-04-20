from fastapi import APIRouter, Depends, Body

from src.repository.users_repository import UsersRepository

usuarios_controller = APIRouter(tags=["Usuarios"])

user = UsersRepository()


@user.post('/list-users')
async def get_users(ret: dict = Body(...)):
  pass