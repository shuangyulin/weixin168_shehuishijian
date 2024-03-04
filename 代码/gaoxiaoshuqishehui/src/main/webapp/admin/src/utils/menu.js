








const menu = {
    list() {
        return [
    {
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"学生管理",
			            "menuJump":"列表",
			            "tableName":"xuesheng"
			        }
			    ],
			    "menu":"学生管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"活动发布管理",
			            "menuJump":"列表",
			            "tableName":"huodongfabu"
			        }
			    ],
			    "menu":"活动发布管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
							"审核",
			                "删除"
			            ],
			            "menu":"活动报名管理",
			            "menuJump":"列表",
			            "tableName":"huodongbaoming"
			        }
			    ],
			    "menu":"活动报名管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"心得交流管理",
                        "menuJump":"列表",
                        "tableName":"forum"
                    }
                ],
                "menu":"心得交流管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"爱心捐物管理",
                        "menuJump":"列表",
                        "tableName":"juanzheng"
                    }
                ],
                "menu":"爱心捐物管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"活动宣传管理",
                        "menuJump":"列表",
                        "tableName":"news"
                    }
                ],
                "menu":"活动宣传管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"优秀事迹栏目管理",
                        "menuJump":"列表",
                        "tableName":"youxiushiji"
                    }
                ],
                "menu":"优秀事迹栏目管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"活动类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryHuodongfabu"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"物品类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryJuanzheng"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"活动宣传类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryNews"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"事迹类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryYouxiushiji"
			        }
			
			    ],
			    "menu":"基础数据管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"轮播图管理",
                        "menuJump":"列表",
                        "tableName":"config"
                    }
                ],
                "menu":"轮播图信息"
            }
        ],
        "frontMenu":[],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"管理员",
        "tableName":"users"
    }
]
    }
}
export default menu;
