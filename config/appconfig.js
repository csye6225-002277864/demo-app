import dotenv, { config } from 'dotenv';
import path from 'path';
dotenv.config({ path: path.resolve( `./secrets/secrets.env`) });
export const dbConfig ={
    HOST:process.env.HOST,
    USERNAME:process.env.USERNAME,
    PASSWORD: process.env.PASSWORD,
    DATABASE: process.env.DATABASE
}

export const queueConfig ={
    TOPIC:process.env.TOPIC,
    PROJECT_ID:process.env.PROJECT_ID
}