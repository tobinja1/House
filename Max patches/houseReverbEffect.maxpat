{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 59.0, 107.0, 640.0, 480.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 242.0, 180.0, 49.0, 20.0 ],
					"text" : "ready!"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-17",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 453.0, 249.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 453.0, 303.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-13",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 453.0, 371.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 453.0, 402.0, 41.0, 22.0 ],
					"text" : "tail $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 453.0, 338.0, 74.0, 22.0 ],
					"text" : "roomsize $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 453.0, 277.0, 65.0, 22.0 ],
					"text" : "revtime $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-12",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 454.0, 186.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 454.0, 219.0, 63.0, 22.0 ],
					"text" : "dryWet $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 297.0, 292.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "cherokee.aif",
								"filename" : "cherokee.aif",
								"filekind" : "audiofile",
								"id" : "u798004003",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1
								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-3",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 297.0, 111.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"id" : "obj-1",
					"inletInfo" : 					{
						"IOInfo" : [ 							{
								"type" : "signal",
								"index" : 1,
								"tag" : "in1",
								"comment" : ""
							}
 ]
					}
,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outletInfo" : 					{
						"IOInfo" : [ 							{
								"type" : "signal",
								"index" : 1,
								"tag" : "out1",
								"comment" : ""
							}
 ]
					}
,
					"outlettype" : [ "signal", "list" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "rnbo",
						"rect" : [ 84.0, 132.0, 969.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Lato",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"title" : "untitled",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 147.0, 350.0, 60.0, 23.0 ],
									"rnbo_classname" : "pak",
									"rnbo_extra_attributes" : 									{
										"list" : "",
										"length" : 0.0
									}
,
									"rnbo_serial" : 4,
									"rnbo_uniqueid" : "pak_obj-12",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"out" : 											{
												"attrOrProp" : 1,
												"digest" : "out",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "list"
											}
,
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "number to be list element 1",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"in2" : 											{
												"attrOrProp" : 1,
												"digest" : "number to be list element 2",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number",
												"defaultValue" : "20"
											}
,
											"length" : 											{
												"attrOrProp" : 2,
												"digest" : "how many things to pack",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number"
											}
,
											"list" : 											{
												"attrOrProp" : 2,
												"digest" : "the list to initialize the {@objectname} object with",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "list"
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "number",
												"digest" : "number to be list element 1",
												"defaultarg" : 1,
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "in2",
												"type" : "number",
												"digest" : "number to be list element 2",
												"defaultarg" : 2,
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "out",
												"type" : "list",
												"digest" : "out",
												"docked" : 0
											}
 ],
										"helpname" : "pak",
										"aliasOf" : "pack",
										"classname" : "pak",
										"operator" : 0,
										"versionId" : 2113152561,
										"changesPatcherIO" : 0
									}
,
									"text" : "pak 0. 20."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "" ],
									"patching_rect" : [ 147.0, 375.0, 44.0, 23.0 ],
									"rnbo_classname" : "line~",
									"rnbo_serial" : 8,
									"rnbo_uniqueid" : "line~_obj-16",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"segments" : 											{
												"attrOrProp" : 1,
												"digest" : "Target value or target value/ramp time pairs",
												"isalias" : 0,
												"aliases" : [ "dest" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "list",
												"defaultValue" : ""
											}
,
											"dest" : 											{
												"attrOrProp" : 1,
												"digest" : "Target value or target value/ramp time pairs",
												"isalias" : 1,
												"aliasOf" : "segments",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "list",
												"defaultValue" : ""
											}
,
											"time" : 											{
												"attrOrProp" : 1,
												"digest" : "Ramp time",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"keepramp" : 											{
												"attrOrProp" : 1,
												"digest" : "Keep last ramp",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "false"
											}
,
											"out" : 											{
												"attrOrProp" : 1,
												"digest" : "Ramp out",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}
,
											"target" : 											{
												"attrOrProp" : 1,
												"digest" : "Bang when ramp has finished",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "bang"
											}
,
											"value" : 											{
												"attrOrProp" : 2,
												"digest" : "Initial value.",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}

										}
,
										"inputs" : [ 											{
												"name" : "segments",
												"type" : "list",
												"digest" : "Target value or target value/ramp time pairs",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "time",
												"type" : "number",
												"digest" : "Ramp time",
												"defaultarg" : 2,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "out",
												"type" : "signal",
												"digest" : "Ramp out",
												"docked" : 0
											}
, 											{
												"name" : "target",
												"type" : "bang",
												"digest" : "Bang when ramp has finished",
												"docked" : 0
											}
 ],
										"helpname" : "line~",
										"aliasOf" : "line~",
										"classname" : "line~",
										"operator" : 0,
										"versionId" : -1254666813,
										"changesPatcherIO" : 0
									}
,
									"text" : "line~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 147.0, 255.0, 60.0, 23.0 ],
									"rnbo_classname" : "pak",
									"rnbo_extra_attributes" : 									{
										"list" : "",
										"length" : 0.0
									}
,
									"rnbo_serial" : 3,
									"rnbo_uniqueid" : "pak_obj-9",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"out" : 											{
												"attrOrProp" : 1,
												"digest" : "out",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "list"
											}
,
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "number to be list element 1",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"in2" : 											{
												"attrOrProp" : 1,
												"digest" : "number to be list element 2",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number",
												"defaultValue" : "20"
											}
,
											"length" : 											{
												"attrOrProp" : 2,
												"digest" : "how many things to pack",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number"
											}
,
											"list" : 											{
												"attrOrProp" : 2,
												"digest" : "the list to initialize the {@objectname} object with",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "list"
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "number",
												"digest" : "number to be list element 1",
												"defaultarg" : 1,
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "in2",
												"type" : "number",
												"digest" : "number to be list element 2",
												"defaultarg" : 2,
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "out",
												"type" : "list",
												"digest" : "out",
												"docked" : 0
											}
 ],
										"helpname" : "pak",
										"aliasOf" : "pack",
										"classname" : "pak",
										"operator" : 0,
										"versionId" : 2113152561,
										"changesPatcherIO" : 0
									}
,
									"text" : "pak 0. 20."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "" ],
									"patching_rect" : [ 147.0, 280.0, 44.0, 23.0 ],
									"rnbo_classname" : "line~",
									"rnbo_serial" : 7,
									"rnbo_uniqueid" : "line~_obj-10",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"segments" : 											{
												"attrOrProp" : 1,
												"digest" : "Target value or target value/ramp time pairs",
												"isalias" : 0,
												"aliases" : [ "dest" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "list",
												"defaultValue" : ""
											}
,
											"dest" : 											{
												"attrOrProp" : 1,
												"digest" : "Target value or target value/ramp time pairs",
												"isalias" : 1,
												"aliasOf" : "segments",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "list",
												"defaultValue" : ""
											}
,
											"time" : 											{
												"attrOrProp" : 1,
												"digest" : "Ramp time",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"keepramp" : 											{
												"attrOrProp" : 1,
												"digest" : "Keep last ramp",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "false"
											}
,
											"out" : 											{
												"attrOrProp" : 1,
												"digest" : "Ramp out",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}
,
											"target" : 											{
												"attrOrProp" : 1,
												"digest" : "Bang when ramp has finished",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "bang"
											}
,
											"value" : 											{
												"attrOrProp" : 2,
												"digest" : "Initial value.",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}

										}
,
										"inputs" : [ 											{
												"name" : "segments",
												"type" : "list",
												"digest" : "Target value or target value/ramp time pairs",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "time",
												"type" : "number",
												"digest" : "Ramp time",
												"defaultarg" : 2,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "out",
												"type" : "signal",
												"digest" : "Ramp out",
												"docked" : 0
											}
, 											{
												"name" : "target",
												"type" : "bang",
												"digest" : "Bang when ramp has finished",
												"docked" : 0
											}
 ],
										"helpname" : "line~",
										"aliasOf" : "line~",
										"classname" : "line~",
										"operator" : 0,
										"versionId" : -1254666813,
										"changesPatcherIO" : 0
									}
,
									"text" : "line~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 147.0, 141.0, 60.0, 23.0 ],
									"rnbo_classname" : "pak",
									"rnbo_extra_attributes" : 									{
										"list" : "",
										"length" : 0.0
									}
,
									"rnbo_serial" : 2,
									"rnbo_uniqueid" : "pak_obj-7",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"out" : 											{
												"attrOrProp" : 1,
												"digest" : "out",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "list"
											}
,
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "number to be list element 1",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"in2" : 											{
												"attrOrProp" : 1,
												"digest" : "number to be list element 2",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number",
												"defaultValue" : "20"
											}
,
											"length" : 											{
												"attrOrProp" : 2,
												"digest" : "how many things to pack",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number"
											}
,
											"list" : 											{
												"attrOrProp" : 2,
												"digest" : "the list to initialize the {@objectname} object with",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "list"
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "number",
												"digest" : "number to be list element 1",
												"defaultarg" : 1,
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "in2",
												"type" : "number",
												"digest" : "number to be list element 2",
												"defaultarg" : 2,
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "out",
												"type" : "list",
												"digest" : "out",
												"docked" : 0
											}
 ],
										"helpname" : "pak",
										"aliasOf" : "pack",
										"classname" : "pak",
										"operator" : 0,
										"versionId" : 2113152561,
										"changesPatcherIO" : 0
									}
,
									"text" : "pak 0. 20."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "" ],
									"patching_rect" : [ 147.0, 166.0, 44.0, 23.0 ],
									"rnbo_classname" : "line~",
									"rnbo_serial" : 6,
									"rnbo_uniqueid" : "line~_obj-8",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"segments" : 											{
												"attrOrProp" : 1,
												"digest" : "Target value or target value/ramp time pairs",
												"isalias" : 0,
												"aliases" : [ "dest" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "list",
												"defaultValue" : ""
											}
,
											"dest" : 											{
												"attrOrProp" : 1,
												"digest" : "Target value or target value/ramp time pairs",
												"isalias" : 1,
												"aliasOf" : "segments",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "list",
												"defaultValue" : ""
											}
,
											"time" : 											{
												"attrOrProp" : 1,
												"digest" : "Ramp time",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"keepramp" : 											{
												"attrOrProp" : 1,
												"digest" : "Keep last ramp",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "false"
											}
,
											"out" : 											{
												"attrOrProp" : 1,
												"digest" : "Ramp out",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}
,
											"target" : 											{
												"attrOrProp" : 1,
												"digest" : "Bang when ramp has finished",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "bang"
											}
,
											"value" : 											{
												"attrOrProp" : 2,
												"digest" : "Initial value.",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}

										}
,
										"inputs" : [ 											{
												"name" : "segments",
												"type" : "list",
												"digest" : "Target value or target value/ramp time pairs",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "time",
												"type" : "number",
												"digest" : "Ramp time",
												"defaultarg" : 2,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "out",
												"type" : "signal",
												"digest" : "Ramp out",
												"docked" : 0
											}
, 											{
												"name" : "target",
												"type" : "bang",
												"digest" : "Bang when ramp has finished",
												"docked" : 0
											}
 ],
										"helpname" : "line~",
										"aliasOf" : "line~",
										"classname" : "line~",
										"operator" : 0,
										"versionId" : -1254666813,
										"changesPatcherIO" : 0
									}
,
									"text" : "line~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 147.0, 319.0, 209.0, 23.0 ],
									"rnbo_classname" : "param",
									"rnbo_extra_attributes" : 									{
										"steps" : 0.0,
										"unit" : "",
										"fromnormalized" : "",
										"order" : "0",
										"preset" : 1,
										"tonormalized" : "",
										"exponent" : 1.0,
										"displayname" : "",
										"ctlin" : 0.0,
										"sendinit" : 1,
										"displayorder" : "-",
										"enum" : "",
										"meta" : ""
									}
,
									"rnbo_serial" : 5,
									"rnbo_uniqueid" : "tail",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"value" : 											{
												"attrOrProp" : 2,
												"digest" : "Set initial value",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Initial Value",
												"displayorder" : 3
											}
,
											"normalizedvalue" : 											{
												"attrOrProp" : 1,
												"digest" : "Set value normalized. ",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number"
											}
,
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset param to initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"normalized" : 											{
												"attrOrProp" : 1,
												"digest" : "Normalized parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number"
											}
,
											"name" : 											{
												"attrOrProp" : 2,
												"digest" : "Name of the parameter",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "Parameter Name",
												"mandatory" : 1
											}
,
											"enum" : 											{
												"attrOrProp" : 2,
												"digest" : "Use an enumerated output",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "list",
												"label" : "Enum Values",
												"displayorder" : 6
											}
,
											"minimum" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 0,
												"aliases" : [ "min" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"min" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 1,
												"aliasOf" : "minimum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"maximum" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 0,
												"aliases" : [ "max" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"max" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 1,
												"aliasOf" : "maximum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"exponent" : 											{
												"attrOrProp" : 2,
												"digest" : "Scale values exponentially",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Exponent",
												"displayorder" : 7
											}
,
											"steps" : 											{
												"attrOrProp" : 2,
												"digest" : "Divide the output into a number of discrete steps",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Steps",
												"displayorder" : 8
											}
,
											"displayName" : 											{
												"attrOrProp" : 2,
												"digest" : "DEPRECATED: Use the lower case 'displayname' instead",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "symbol",
												"label" : "Display Name"
											}
,
											"displayname" : 											{
												"attrOrProp" : 2,
												"digest" : "A more readable name for the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Display Name",
												"displayorder" : 14
											}
,
											"unit" : 											{
												"attrOrProp" : 2,
												"digest" : "A symbol to describe the unit of the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Unit",
												"displayorder" : 15
											}
,
											"tonormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a real parameter value to its normalized form.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "To Normalized Expression",
												"displayorder" : 10
											}
,
											"fromnormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a normalized parameter into its actual parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "From Normalized Expression",
												"displayorder" : 9
											}
,
											"order" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which initial parameter values will be sent out on patcher load. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "0",
												"label" : "Restore Order",
												"displayorder" : 12
											}
,
											"displayorder" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which parameters will show up in a list of all parameters. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "-",
												"label" : "Display Order",
												"displayorder" : 13
											}
,
											"sendinit" : 											{
												"attrOrProp" : 2,
												"digest" : "Send initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Send Init",
												"displayorder" : 4
											}
,
											"ctlin" : 											{
												"attrOrProp" : 2,
												"digest" : "MIDI controller number to control this parameter.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"label" : "MIDI Controller Number.",
												"displayorder" : 16
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 17
											}
,
											"nopreset" : 											{
												"attrOrProp" : 2,
												"digest" : "Do not add this value to the preset [DEPRECATED - USE @preset 0 instead].",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "bool",
												"defaultValue" : "false"
											}
,
											"preset" : 											{
												"attrOrProp" : 2,
												"digest" : "Add this value to the preset.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Include In Preset",
												"displayorder" : 11
											}

										}
,
										"inputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalizedvalue",
												"type" : "number",
												"digest" : "Set value normalized. ",
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalized",
												"type" : "number",
												"digest" : "Normalized parameter value.",
												"docked" : 0
											}
 ],
										"helpname" : "param",
										"aliasOf" : "param",
										"classname" : "param",
										"operator" : 0,
										"versionId" : -1940971094,
										"changesPatcherIO" : 0
									}
,
									"text" : "param tail @value 0.9 @min 0 @max 1",
									"varname" : "tail"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 147.0, 223.0, 268.0, 23.0 ],
									"rnbo_classname" : "param",
									"rnbo_extra_attributes" : 									{
										"steps" : 0.0,
										"unit" : "",
										"fromnormalized" : "",
										"order" : "0",
										"preset" : 1,
										"tonormalized" : "",
										"exponent" : 1.0,
										"displayname" : "",
										"ctlin" : 0.0,
										"sendinit" : 1,
										"displayorder" : "-",
										"enum" : "",
										"meta" : ""
									}
,
									"rnbo_serial" : 4,
									"rnbo_uniqueid" : "roomsize",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"value" : 											{
												"attrOrProp" : 2,
												"digest" : "Set initial value",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Initial Value",
												"displayorder" : 3
											}
,
											"normalizedvalue" : 											{
												"attrOrProp" : 1,
												"digest" : "Set value normalized. ",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number"
											}
,
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset param to initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"normalized" : 											{
												"attrOrProp" : 1,
												"digest" : "Normalized parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number"
											}
,
											"name" : 											{
												"attrOrProp" : 2,
												"digest" : "Name of the parameter",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "Parameter Name",
												"mandatory" : 1
											}
,
											"enum" : 											{
												"attrOrProp" : 2,
												"digest" : "Use an enumerated output",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "list",
												"label" : "Enum Values",
												"displayorder" : 6
											}
,
											"minimum" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 0,
												"aliases" : [ "min" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"min" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 1,
												"aliasOf" : "minimum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"maximum" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 0,
												"aliases" : [ "max" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"max" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 1,
												"aliasOf" : "maximum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"exponent" : 											{
												"attrOrProp" : 2,
												"digest" : "Scale values exponentially",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Exponent",
												"displayorder" : 7
											}
,
											"steps" : 											{
												"attrOrProp" : 2,
												"digest" : "Divide the output into a number of discrete steps",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Steps",
												"displayorder" : 8
											}
,
											"displayName" : 											{
												"attrOrProp" : 2,
												"digest" : "DEPRECATED: Use the lower case 'displayname' instead",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "symbol",
												"label" : "Display Name"
											}
,
											"displayname" : 											{
												"attrOrProp" : 2,
												"digest" : "A more readable name for the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Display Name",
												"displayorder" : 14
											}
,
											"unit" : 											{
												"attrOrProp" : 2,
												"digest" : "A symbol to describe the unit of the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Unit",
												"displayorder" : 15
											}
,
											"tonormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a real parameter value to its normalized form.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "To Normalized Expression",
												"displayorder" : 10
											}
,
											"fromnormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a normalized parameter into its actual parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "From Normalized Expression",
												"displayorder" : 9
											}
,
											"order" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which initial parameter values will be sent out on patcher load. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "0",
												"label" : "Restore Order",
												"displayorder" : 12
											}
,
											"displayorder" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which parameters will show up in a list of all parameters. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "-",
												"label" : "Display Order",
												"displayorder" : 13
											}
,
											"sendinit" : 											{
												"attrOrProp" : 2,
												"digest" : "Send initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Send Init",
												"displayorder" : 4
											}
,
											"ctlin" : 											{
												"attrOrProp" : 2,
												"digest" : "MIDI controller number to control this parameter.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"label" : "MIDI Controller Number.",
												"displayorder" : 16
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 17
											}
,
											"nopreset" : 											{
												"attrOrProp" : 2,
												"digest" : "Do not add this value to the preset [DEPRECATED - USE @preset 0 instead].",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "bool",
												"defaultValue" : "false"
											}
,
											"preset" : 											{
												"attrOrProp" : 2,
												"digest" : "Add this value to the preset.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Include In Preset",
												"displayorder" : 11
											}

										}
,
										"inputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalizedvalue",
												"type" : "number",
												"digest" : "Set value normalized. ",
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalized",
												"type" : "number",
												"digest" : "Normalized parameter value.",
												"docked" : 0
											}
 ],
										"helpname" : "param",
										"aliasOf" : "param",
										"classname" : "param",
										"operator" : 0,
										"versionId" : -1940971094,
										"changesPatcherIO" : 0
									}
,
									"text" : "param roomsize @value 200 @min 0.1 @max 300",
									"varname" : "roomsize"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 147.0, 111.0, 195.0, 23.0 ],
									"rnbo_classname" : "param",
									"rnbo_extra_attributes" : 									{
										"steps" : 0.0,
										"unit" : "",
										"fromnormalized" : "",
										"order" : "0",
										"preset" : 1,
										"tonormalized" : "",
										"exponent" : 1.0,
										"displayname" : "",
										"ctlin" : 0.0,
										"maximum" : 1.0,
										"sendinit" : 1,
										"displayorder" : "-",
										"enum" : "",
										"meta" : ""
									}
,
									"rnbo_serial" : 3,
									"rnbo_uniqueid" : "revtime",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"value" : 											{
												"attrOrProp" : 2,
												"digest" : "Set initial value",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Initial Value",
												"displayorder" : 3
											}
,
											"normalizedvalue" : 											{
												"attrOrProp" : 1,
												"digest" : "Set value normalized. ",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number"
											}
,
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset param to initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"normalized" : 											{
												"attrOrProp" : 1,
												"digest" : "Normalized parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number"
											}
,
											"name" : 											{
												"attrOrProp" : 2,
												"digest" : "Name of the parameter",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "Parameter Name",
												"mandatory" : 1
											}
,
											"enum" : 											{
												"attrOrProp" : 2,
												"digest" : "Use an enumerated output",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "list",
												"label" : "Enum Values",
												"displayorder" : 6
											}
,
											"minimum" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 0,
												"aliases" : [ "min" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"min" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 1,
												"aliasOf" : "minimum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"maximum" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 0,
												"aliases" : [ "max" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"max" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 1,
												"aliasOf" : "maximum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"exponent" : 											{
												"attrOrProp" : 2,
												"digest" : "Scale values exponentially",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Exponent",
												"displayorder" : 7
											}
,
											"steps" : 											{
												"attrOrProp" : 2,
												"digest" : "Divide the output into a number of discrete steps",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Steps",
												"displayorder" : 8
											}
,
											"displayName" : 											{
												"attrOrProp" : 2,
												"digest" : "DEPRECATED: Use the lower case 'displayname' instead",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "symbol",
												"label" : "Display Name"
											}
,
											"displayname" : 											{
												"attrOrProp" : 2,
												"digest" : "A more readable name for the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Display Name",
												"displayorder" : 14
											}
,
											"unit" : 											{
												"attrOrProp" : 2,
												"digest" : "A symbol to describe the unit of the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Unit",
												"displayorder" : 15
											}
,
											"tonormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a real parameter value to its normalized form.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "To Normalized Expression",
												"displayorder" : 10
											}
,
											"fromnormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a normalized parameter into its actual parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "From Normalized Expression",
												"displayorder" : 9
											}
,
											"order" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which initial parameter values will be sent out on patcher load. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "0",
												"label" : "Restore Order",
												"displayorder" : 12
											}
,
											"displayorder" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which parameters will show up in a list of all parameters. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "-",
												"label" : "Display Order",
												"displayorder" : 13
											}
,
											"sendinit" : 											{
												"attrOrProp" : 2,
												"digest" : "Send initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Send Init",
												"displayorder" : 4
											}
,
											"ctlin" : 											{
												"attrOrProp" : 2,
												"digest" : "MIDI controller number to control this parameter.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"label" : "MIDI Controller Number.",
												"displayorder" : 16
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 17
											}
,
											"nopreset" : 											{
												"attrOrProp" : 2,
												"digest" : "Do not add this value to the preset [DEPRECATED - USE @preset 0 instead].",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "bool",
												"defaultValue" : "false"
											}
,
											"preset" : 											{
												"attrOrProp" : 2,
												"digest" : "Add this value to the preset.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Include In Preset",
												"displayorder" : 11
											}

										}
,
										"inputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalizedvalue",
												"type" : "number",
												"digest" : "Set value normalized. ",
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalized",
												"type" : "number",
												"digest" : "Normalized parameter value.",
												"docked" : 0
											}
 ],
										"helpname" : "param",
										"aliasOf" : "param",
										"classname" : "param",
										"operator" : 0,
										"versionId" : -1940971094,
										"changesPatcherIO" : 0
									}
,
									"text" : "param revtime @value 11 @min 0.1",
									"varname" : "revtime"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 147.0, 24.0, 222.0, 23.0 ],
									"rnbo_classname" : "param",
									"rnbo_extra_attributes" : 									{
										"steps" : 0.0,
										"unit" : "",
										"fromnormalized" : "",
										"order" : "0",
										"preset" : 1,
										"tonormalized" : "",
										"exponent" : 1.0,
										"displayname" : "",
										"ctlin" : 0.0,
										"sendinit" : 1,
										"displayorder" : "-",
										"enum" : "",
										"meta" : ""
									}
,
									"rnbo_serial" : 2,
									"rnbo_uniqueid" : "dryWet",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"value" : 											{
												"attrOrProp" : 2,
												"digest" : "Set initial value",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Initial Value",
												"displayorder" : 3
											}
,
											"normalizedvalue" : 											{
												"attrOrProp" : 1,
												"digest" : "Set value normalized. ",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number"
											}
,
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset param to initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"normalized" : 											{
												"attrOrProp" : 1,
												"digest" : "Normalized parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number"
											}
,
											"name" : 											{
												"attrOrProp" : 2,
												"digest" : "Name of the parameter",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "Parameter Name",
												"mandatory" : 1
											}
,
											"enum" : 											{
												"attrOrProp" : 2,
												"digest" : "Use an enumerated output",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "list",
												"label" : "Enum Values",
												"displayorder" : 6
											}
,
											"minimum" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 0,
												"aliases" : [ "min" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"min" : 											{
												"attrOrProp" : 2,
												"digest" : "Minimum value",
												"isalias" : 1,
												"aliasOf" : "minimum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Minimum",
												"displayorder" : 1
											}
,
											"maximum" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 0,
												"aliases" : [ "max" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"max" : 											{
												"attrOrProp" : 2,
												"digest" : "Maximum value",
												"isalias" : 1,
												"aliasOf" : "maximum",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Maximum",
												"displayorder" : 2
											}
,
											"exponent" : 											{
												"attrOrProp" : 2,
												"digest" : "Scale values exponentially",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1",
												"label" : "Exponent",
												"displayorder" : 7
											}
,
											"steps" : 											{
												"attrOrProp" : 2,
												"digest" : "Divide the output into a number of discrete steps",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0",
												"label" : "Steps",
												"displayorder" : 8
											}
,
											"displayName" : 											{
												"attrOrProp" : 2,
												"digest" : "DEPRECATED: Use the lower case 'displayname' instead",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "symbol",
												"label" : "Display Name"
											}
,
											"displayname" : 											{
												"attrOrProp" : 2,
												"digest" : "A more readable name for the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Display Name",
												"displayorder" : 14
											}
,
											"unit" : 											{
												"attrOrProp" : 2,
												"digest" : "A symbol to describe the unit of the parameter in an external RNBO target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Unit",
												"displayorder" : 15
											}
,
											"tonormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a real parameter value to its normalized form.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "To Normalized Expression",
												"displayorder" : 10
											}
,
											"fromnormalized" : 											{
												"attrOrProp" : 2,
												"digest" : "Converts a normalized parameter into its actual parameter value.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"label" : "From Normalized Expression",
												"displayorder" : 9
											}
,
											"order" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which initial parameter values will be sent out on patcher load. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "0",
												"label" : "Restore Order",
												"displayorder" : 12
											}
,
											"displayorder" : 											{
												"attrOrProp" : 2,
												"digest" : "Order in which parameters will show up in a list of all parameters. The order can be numeric or symbolic ('first' and 'last')",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "-",
												"label" : "Display Order",
												"displayorder" : 13
											}
,
											"sendinit" : 											{
												"attrOrProp" : 2,
												"digest" : "Send initial value",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Send Init",
												"displayorder" : 4
											}
,
											"ctlin" : 											{
												"attrOrProp" : 2,
												"digest" : "MIDI controller number to control this parameter.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"label" : "MIDI Controller Number.",
												"displayorder" : 16
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 17
											}
,
											"nopreset" : 											{
												"attrOrProp" : 2,
												"digest" : "Do not add this value to the preset [DEPRECATED - USE @preset 0 instead].",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 1,
												"type" : "bool",
												"defaultValue" : "false"
											}
,
											"preset" : 											{
												"attrOrProp" : 2,
												"digest" : "Add this value to the preset.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "true",
												"label" : "Include In Preset",
												"displayorder" : 11
											}

										}
,
										"inputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalizedvalue",
												"type" : "number",
												"digest" : "Set value normalized. ",
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "value",
												"type" : "number",
												"digest" : "Parameter value",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "normalized",
												"type" : "number",
												"digest" : "Normalized parameter value.",
												"docked" : 0
											}
 ],
										"helpname" : "param",
										"aliasOf" : "param",
										"classname" : "param",
										"operator" : 0,
										"versionId" : -1940971094,
										"changesPatcherIO" : 0
									}
,
									"text" : "param dryWet @value 0 @min 0 @max 1",
									"varname" : "dryWet"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 58.0, 296.0, 43.0, 23.0 ],
									"rnbo_classname" : "out~",
									"rnbo_extra_attributes" : 									{
										"comment" : "",
										"meta" : ""
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "out~_obj-2",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "signal sent to outlet with index 1",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal"
											}
,
											"index" : 											{
												"attrOrProp" : 2,
												"digest" : "outlet number",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"mandatory" : 1
											}
,
											"comment" : 											{
												"attrOrProp" : 2,
												"digest" : "mouse over comment",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 3
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "signal",
												"digest" : "signal sent to outlet with index 1",
												"displayName" : "",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [  ],
										"helpname" : "out~",
										"aliasOf" : "out~",
										"classname" : "out~",
										"operator" : 0,
										"versionId" : 374499139,
										"changesPatcherIO" : 1
									}
,
									"text" : "out~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 58.0, 184.0, 35.0, 23.0 ],
									"rnbo_classname" : "in~",
									"rnbo_extra_attributes" : 									{
										"comment" : "",
										"meta" : ""
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "in~_obj-1",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"out1" : 											{
												"attrOrProp" : 1,
												"digest" : "signal from inlet with index 1",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}
,
											"index" : 											{
												"attrOrProp" : 2,
												"digest" : "inlet number",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"mandatory" : 1
											}
,
											"comment" : 											{
												"attrOrProp" : 2,
												"digest" : "mouse over comment",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 3
											}

										}
,
										"inputs" : [  ],
										"outputs" : [ 											{
												"name" : "out1",
												"type" : "signal",
												"digest" : "signal from inlet with index 1",
												"displayName" : "",
												"docked" : 0
											}
 ],
										"helpname" : "in~",
										"aliasOf" : "in~",
										"classname" : "in~",
										"operator" : 0,
										"versionId" : -176007711,
										"changesPatcherIO" : 1
									}
,
									"text" : "in~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 147.0, 57.0, 60.0, 23.0 ],
									"rnbo_classname" : "pak",
									"rnbo_extra_attributes" : 									{
										"list" : "",
										"length" : 0.0
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "pak_obj-15",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"out" : 											{
												"attrOrProp" : 1,
												"digest" : "out",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "list"
											}
,
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "number to be list element 1",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"in2" : 											{
												"attrOrProp" : 1,
												"digest" : "number to be list element 2",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number",
												"defaultValue" : "20"
											}
,
											"length" : 											{
												"attrOrProp" : 2,
												"digest" : "how many things to pack",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number"
											}
,
											"list" : 											{
												"attrOrProp" : 2,
												"digest" : "the list to initialize the {@objectname} object with",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "list"
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "number",
												"digest" : "number to be list element 1",
												"defaultarg" : 1,
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "in2",
												"type" : "number",
												"digest" : "number to be list element 2",
												"defaultarg" : 2,
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "out",
												"type" : "list",
												"digest" : "out",
												"docked" : 0
											}
 ],
										"helpname" : "pak",
										"aliasOf" : "pack",
										"classname" : "pak",
										"operator" : 0,
										"versionId" : 2113152561,
										"changesPatcherIO" : 0
									}
,
									"text" : "pak 0. 20."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "" ],
									"patching_rect" : [ 147.0, 82.0, 44.0, 23.0 ],
									"rnbo_classname" : "line~",
									"rnbo_serial" : 5,
									"rnbo_uniqueid" : "line~_obj-14",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"segments" : 											{
												"attrOrProp" : 1,
												"digest" : "Target value or target value/ramp time pairs",
												"isalias" : 0,
												"aliases" : [ "dest" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "list",
												"defaultValue" : ""
											}
,
											"dest" : 											{
												"attrOrProp" : 1,
												"digest" : "Target value or target value/ramp time pairs",
												"isalias" : 1,
												"aliasOf" : "segments",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "list",
												"defaultValue" : ""
											}
,
											"time" : 											{
												"attrOrProp" : 1,
												"digest" : "Ramp time",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"keepramp" : 											{
												"attrOrProp" : 1,
												"digest" : "Keep last ramp",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "false"
											}
,
											"out" : 											{
												"attrOrProp" : 1,
												"digest" : "Ramp out",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}
,
											"target" : 											{
												"attrOrProp" : 1,
												"digest" : "Bang when ramp has finished",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "bang"
											}
,
											"value" : 											{
												"attrOrProp" : 2,
												"digest" : "Initial value.",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}

										}
,
										"inputs" : [ 											{
												"name" : "segments",
												"type" : "list",
												"digest" : "Target value or target value/ramp time pairs",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "time",
												"type" : "number",
												"digest" : "Ramp time",
												"defaultarg" : 2,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "out",
												"type" : "signal",
												"digest" : "Ramp out",
												"docked" : 0
											}
, 											{
												"name" : "target",
												"type" : "bang",
												"digest" : "Bang when ramp has finished",
												"docked" : 0
											}
 ],
										"helpname" : "line~",
										"aliasOf" : "line~",
										"classname" : "line~",
										"operator" : 0,
										"versionId" : -1254666813,
										"changesPatcherIO" : 0
									}
,
									"text" : "line~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 243.0, 46.0, 21.0 ],
									"text" : "reverb"
								}

							}
, 							{
								"box" : 								{
									"genpatcher" : 									{
										"patcher" : 										{
											"fileversion" : 1,
											"appversion" : 											{
												"major" : 8,
												"minor" : 6,
												"revision" : 2,
												"architecture" : "x64",
												"modernui" : 1
											}
,
											"classnamespace" : "dsp.gen",
											"rect" : [ -474.0, 96.0, 1854.0, 939.0 ],
											"bglocked" : 0,
											"openinpresentation" : 0,
											"default_fontsize" : 12.0,
											"default_fontface" : 0,
											"default_fontname" : "Arial",
											"gridonopen" : 1,
											"gridsize" : [ 15.0, 15.0 ],
											"gridsnaponopen" : 1,
											"objectsnaponopen" : 1,
											"statusbarvisible" : 2,
											"toolbarvisible" : 1,
											"lefttoolbarpinned" : 0,
											"toptoolbarpinned" : 0,
											"righttoolbarpinned" : 0,
											"bottomtoolbarpinned" : 0,
											"toolbars_unpinned_last_save" : 0,
											"tallnewobj" : 0,
											"boxanimatetime" : 200,
											"enablehscroll" : 1,
											"enablevscroll" : 1,
											"devicewidth" : 0.0,
											"description" : "",
											"digest" : "",
											"tags" : "",
											"style" : "",
											"subpatcher_template" : "",
											"assistshowspatchername" : 0,
											"boxes" : [ 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 5 @comment tail @default 0.9",
														"outlettype" : [ "" ],
														"numinlets" : 0,
														"id" : "obj-3",
														"patching_rect" : [ 603.0, 703.0, 183.0, 22.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 4 @comment roomsize @default 200",
														"outlettype" : [ "" ],
														"numinlets" : 0,
														"id" : "obj-2",
														"patching_rect" : [ 675.0, 70.0, 220.0, 22.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 3 @comment revtime @default 11",
														"outlettype" : [ "" ],
														"numinlets" : 0,
														"id" : "obj-1",
														"patching_rect" : [ 1125.0, 287.0, 203.0, 22.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 2",
														"outlettype" : [ "" ],
														"numinlets" : 0,
														"id" : "obj-12",
														"patching_rect" : [ 495.0, 1399.0, 28.0, 22.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "mix",
														"outlettype" : [ "" ],
														"numinlets" : 3,
														"id" : "obj-8",
														"patching_rect" : [ 435.0, 1399.0, 40.0, 22.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "comment",
														"text" : "Diffusion\nchains",
														"linecount" : 2,
														"fontsize" : 12.0,
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-303",
														"patching_rect" : [ 45.0, 1230.0, 60.0, 35.0 ],
														"numoutlets" : 0
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-302",
														"patching_rect" : [ 270.0, 885.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 1",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 0,
														"id" : "obj-300",
														"patching_rect" : [ 285.0, 930.0, 30.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 1",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 0,
														"id" : "obj-297",
														"patching_rect" : [ 840.0, 30.0, 30.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-294",
														"patching_rect" : [ 1140.0, 825.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-295",
														"patching_rect" : [ 990.0, 825.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-293",
														"patching_rect" : [ 345.0, 825.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-292",
														"patching_rect" : [ 195.0, 825.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.5",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-289",
														"patching_rect" : [ 495.0, 690.0, 36.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.5",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-288",
														"patching_rect" : [ 345.0, 690.0, 36.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.5",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-287",
														"patching_rect" : [ 195.0, 690.0, 36.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.5",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-286",
														"patching_rect" : [ 45.000003999999997, 690.0, 36.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 1",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 0,
														"id" : "obj-284",
														"patching_rect" : [ 401.0, 1398.5, 30.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-278",
														"patching_rect" : [ 270.0, 990.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "-",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-277",
														"patching_rect" : [ 1065.0, 855.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "-",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-276",
														"patching_rect" : [ 270.0, 855.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-271",
														"patching_rect" : [ 1290.0, 780.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-272",
														"patching_rect" : [ 1140.0, 780.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-273",
														"patching_rect" : [ 990.0, 780.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-274",
														"patching_rect" : [ 840.0, 780.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "param early 0 @min 0 @max 1",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 0,
														"id" : "obj-275",
														"patching_rect" : [ 1335.0, 735.0, 167.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-269",
														"patching_rect" : [ 495.0, 780.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-270",
														"patching_rect" : [ 345.0, 780.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-267",
														"patching_rect" : [ 195.0, 780.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-266",
														"patching_rect" : [ 45.000003999999997, 780.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "!- 0",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-264",
														"patching_rect" : [ 345.0, 660.0, 28.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-263",
														"patching_rect" : [ 495.0, 630.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-262",
														"patching_rect" : [ 345.0, 630.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "-",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-261",
														"patching_rect" : [ 195.0, 630.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "-",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-260",
														"patching_rect" : [ 435.0, 585.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "-",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-259",
														"patching_rect" : [ 45.000003999999997, 630.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-258",
														"patching_rect" : [ 360.0, 585.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "-",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-257",
														"patching_rect" : [ 135.0, 585.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-256",
														"patching_rect" : [ 60.0, 585.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "comment",
														"text" : "FDN matrix",
														"linecount" : 2,
														"fontsize" : 12.0,
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-249",
														"patching_rect" : [ 255.0, 570.0, 60.0, 35.0 ],
														"numoutlets" : 0
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-245",
														"patching_rect" : [ 525.0, 720.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-246",
														"patching_rect" : [ 375.0, 720.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-247",
														"patching_rect" : [ 225.0, 720.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-248",
														"patching_rect" : [ 75.0, 720.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "expr -pow(in2\\,in1)",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-231",
														"patching_rect" : [ 510.0, 435.0, 113.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-232",
														"patching_rect" : [ 495.0, 465.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "history",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-233",
														"patching_rect" : [ 555.0, 540.0, 47.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "mix",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 3,
														"id" : "obj-234",
														"patching_rect" : [ 495.0, 540.0, 46.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "delay 48000",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-236",
														"patching_rect" : [ 495.0, 405.0, 78.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "expr -pow(in2\\,in1)",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-238",
														"patching_rect" : [ 360.0, 435.0, 113.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-239",
														"patching_rect" : [ 345.0, 465.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "history",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-240",
														"patching_rect" : [ 405.0, 540.0, 47.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "mix",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 3,
														"id" : "obj-241",
														"patching_rect" : [ 345.0, 540.0, 46.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "delay 48000",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-243",
														"patching_rect" : [ 345.0, 405.0, 78.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "expr -pow(in2\\,in1)",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-224",
														"patching_rect" : [ 210.0, 435.0, 113.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-225",
														"patching_rect" : [ 195.0, 465.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "history",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-226",
														"patching_rect" : [ 255.0, 540.0, 47.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "mix",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 3,
														"id" : "obj-227",
														"patching_rect" : [ 195.0, 540.0, 46.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "delay 48000",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-229",
														"patching_rect" : [ 195.0, 405.0, 78.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "delay 48000 4",
														"fontsize" : 12.0,
														"outlettype" : [ "", "", "", "" ],
														"fontname" : "Lato",
														"numinlets" : 5,
														"id" : "obj-214",
														"patching_rect" : [ 840.0, 540.0, 465.0, 23.0 ],
														"numoutlets" : 4
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "comment",
														"text" : "Tap delays",
														"linecount" : 2,
														"fontsize" : 12.0,
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-213",
														"patching_rect" : [ 780.0, 540.0, 60.0, 35.0 ],
														"numoutlets" : 0
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "comment",
														"text" : "prediffuse",
														"fontsize" : 12.0,
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-212",
														"patching_rect" : [ 900.0, 240.000014999999991, 75.0, 21.0 ],
														"numoutlets" : 0
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "out 1",
														"fontsize" : 12.0,
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-210",
														"patching_rect" : [ 435.0, 1425.0, 38.0, 23.0 ],
														"numoutlets" : 0
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-204",
														"patching_rect" : [ 1290.0, 600.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "expr pow(in2\\,in1)",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-205",
														"patching_rect" : [ 1305.0, 570.0, 109.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-202",
														"patching_rect" : [ 1140.0, 600.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "expr pow(in2\\,in1)",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-203",
														"patching_rect" : [ 1155.0, 570.0, 109.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-200",
														"patching_rect" : [ 990.0, 600.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "expr pow(in2\\,in1)",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-201",
														"patching_rect" : [ 1005.0, 570.0, 109.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-199",
														"patching_rect" : [ 840.0, 600.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "expr pow(in2\\,in1)",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-198",
														"patching_rect" : [ 855.0, 570.0, 109.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+ 5",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-197",
														"patching_rect" : [ 1305.0, 510.0, 28.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+ 5",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-196",
														"patching_rect" : [ 1155.0, 510.0, 28.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+ 5",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-195",
														"patching_rect" : [ 1005.0, 510.0, 28.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+ 5",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-194",
														"patching_rect" : [ 855.0, 510.0, 28.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.155",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-191",
														"patching_rect" : [ 1155.0, 480.0, 50.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.3",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-192",
														"patching_rect" : [ 1005.0, 480.0, 36.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.41",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-193",
														"patching_rect" : [ 855.0, 480.0, 43.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "!- 1341",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-131",
														"patching_rect" : [ 330.0, 1110.0, 49.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "!-",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-129",
														"patching_rect" : [ 270.0, 1110.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+ 369",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-127",
														"patching_rect" : [ 270.0, 1080.0, 42.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+ 931",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-125",
														"patching_rect" : [ 330.0, 1080.0, 42.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.376623",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-124",
														"patching_rect" : [ 330.0, 1050.0, 70.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-112",
														"patching_rect" : [ 435.0, 1320.0, 45.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.625",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-114",
														"patching_rect" : [ 435.0, 1290.0, 50.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "-",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-116",
														"patching_rect" : [ 435.0, 1260.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.625",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-119",
														"patching_rect" : [ 450.0, 1230.0, 50.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "delay 10000",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-120",
														"patching_rect" : [ 480.0, 1200.0, 78.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-121",
														"patching_rect" : [ 510.000061000000017, 1170.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-98",
														"patching_rect" : [ 285.0, 1320.0, 45.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.625",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-100",
														"patching_rect" : [ 285.0, 1290.0, 50.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "-",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-102",
														"patching_rect" : [ 285.0, 1260.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.625",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-105",
														"patching_rect" : [ 300.0, 1230.0, 50.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "delay 15000",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-106",
														"patching_rect" : [ 330.0, 1200.0, 78.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-107",
														"patching_rect" : [ 360.0, 1170.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+ 159",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-95",
														"patching_rect" : [ 224.999968999999993, 1110.0, 42.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.125541",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-88",
														"patching_rect" : [ 224.999968999999993, 1050.0, 70.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-77",
														"patching_rect" : [ 134.999968999999993, 1320.0, 45.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.75",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-79",
														"patching_rect" : [ 134.999968999999993, 1290.0, 43.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "-",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-81",
														"patching_rect" : [ 134.999968999999993, 1260.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.75",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-84",
														"patching_rect" : [ 149.999968999999993, 1230.0, 43.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "delay 5000",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-85",
														"patching_rect" : [ 179.999968999999993, 1200.0, 71.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-86",
														"patching_rect" : [ 209.999968999999993, 1170.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "+",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-74",
														"patching_rect" : [ 840.0, 300.0, 45.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.75",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-72",
														"patching_rect" : [ 840.0, 270.0, 43.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "-",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-67",
														"patching_rect" : [ 840.0, 240.000014999999991, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.75",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-64",
														"patching_rect" : [ 855.0, 210.000014999999991, 43.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "delay 6000",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-63",
														"patching_rect" : [ 885.0, 180.000014999999991, 71.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.110732",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-62",
														"patching_rect" : [ 930.0, 150.0, 70.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "int",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-52",
														"patching_rect" : [ 675.0, 1110.0, 24.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.000527",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-51",
														"patching_rect" : [ 675.0, 1080.0, 70.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "expr -pow(in2\\,in1)",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-45",
														"patching_rect" : [ 60.0, 435.0, 113.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "*",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-44",
														"patching_rect" : [ 45.000003999999997, 465.0, 32.5, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.63245",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-42",
														"patching_rect" : [ 555.0, 345.0, 63.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.7071",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-43",
														"patching_rect" : [ 405.0, 345.0, 57.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 0.81649",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-41",
														"patching_rect" : [ 255.0, 345.0, 63.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "* 1",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-40",
														"patching_rect" : [ 105.0, 345.0, 26.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "expr pow(pow(10\\,-60/20)\\,1./(in1*samplerate))",
														"linecount" : 2,
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-35",
														"patching_rect" : [ 1125.0, 390.0, 240.0, 37.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "history",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-31",
														"patching_rect" : [ 105.0, 540.0, 47.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "mix",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 3,
														"id" : "obj-32",
														"patching_rect" : [ 45.000003999999997, 540.0, 46.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "comment",
														"text" : "FDN dampers",
														"linecount" : 2,
														"fontsize" : 12.0,
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-33",
														"patching_rect" : [ 90.0, 495.0, 60.0, 35.0 ],
														"numoutlets" : 0
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "delay 48000",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 2,
														"id" : "obj-30",
														"patching_rect" : [ 45.000003999999997, 405.0, 78.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "comment",
														"text" : "Feeedback delay network",
														"linecount" : 3,
														"fontsize" : 12.0,
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-28",
														"patching_rect" : [ 30.0, 330.0, 75.0, 50.0 ],
														"numoutlets" : 0
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "history",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-27",
														"patching_rect" : [ 900.0, 104.999992000000006, 47.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "mix",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 3,
														"id" : "obj-17",
														"patching_rect" : [ 840.0, 104.999992000000006, 46.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "comment",
														"text" : "input damper",
														"fontsize" : 12.0,
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-16",
														"patching_rect" : [ 960.0, 105.0, 90.0, 21.0 ],
														"numoutlets" : 0
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "!- 1",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-14",
														"patching_rect" : [ 960.0, 75.0, 28.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "expr in1*samplerate/340",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 1,
														"id" : "obj-11",
														"patching_rect" : [ 675.0, 120.0, 144.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "param bandwidth 1 @min 0 @max 1",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 0,
														"id" : "obj-7",
														"patching_rect" : [ 960.0, 30.0, 198.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "param spread 90 @min 0 @max 100",
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 0,
														"id" : "obj-6",
														"patching_rect" : [ 885.0, 990.0, 198.0, 23.0 ],
														"numoutlets" : 1
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "param damping 0.7 @min 0 @max 1",
														"linecount" : 2,
														"fontsize" : 12.0,
														"outlettype" : [ "" ],
														"fontname" : "Lato",
														"numinlets" : 0,
														"id" : "obj-5",
														"patching_rect" : [ 540.0, 495.0, 120.0, 37.0 ],
														"numoutlets" : 1
													}

												}
 ],
											"lines" : [ 												{
													"patchline" : 													{
														"source" : [ "obj-3", 0 ],
														"destination" : [ "obj-270", 1 ],
														"midpoints" : [ 612.5, 774.5, 368.0, 774.5 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-3", 0 ],
														"destination" : [ "obj-266", 1 ],
														"midpoints" : [ 612.5, 774.5, 68.00000399999999, 774.5 ],
														"order" : 3
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-3", 0 ],
														"destination" : [ "obj-267", 1 ],
														"midpoints" : [ 612.5, 774.5, 218.0, 774.5 ],
														"order" : 2
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-3", 0 ],
														"destination" : [ "obj-269", 1 ],
														"midpoints" : [ 612.5, 774.5, 518.0, 774.5 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-2", 0 ],
														"destination" : [ "obj-11", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-1", 0 ],
														"destination" : [ "obj-35", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-12", 0 ],
														"destination" : [ "obj-8", 2 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-6", 0 ],
														"destination" : [ "obj-88", 0 ],
														"midpoints" : [ 894.5, 1037.0, 234.499968999999993, 1037.0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-6", 0 ],
														"destination" : [ "obj-124", 0 ],
														"midpoints" : [ 894.5, 1037.0, 339.5, 1037.0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-7", 0 ],
														"destination" : [ "obj-14", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-297", 0 ],
														"destination" : [ "obj-17", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-275", 0 ],
														"destination" : [ "obj-274", 1 ],
														"midpoints" : [ 1344.5, 774.5, 863.0, 774.5 ],
														"order" : 3
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-275", 0 ],
														"destination" : [ "obj-273", 1 ],
														"midpoints" : [ 1344.5, 774.5, 1013.0, 774.5 ],
														"order" : 2
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-275", 0 ],
														"destination" : [ "obj-272", 1 ],
														"midpoints" : [ 1344.5, 774.5, 1163.0, 774.5 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-275", 0 ],
														"destination" : [ "obj-271", 1 ],
														"midpoints" : [ 1344.5, 774.5, 1313.0, 774.5 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-112", 0 ],
														"destination" : [ "obj-8", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-8", 0 ],
														"destination" : [ "obj-210", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-284", 0 ],
														"destination" : [ "obj-8", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-100", 0 ],
														"destination" : [ "obj-98", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-102", 0 ],
														"destination" : [ "obj-100", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-102", 0 ],
														"destination" : [ "obj-106", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-105", 0 ],
														"destination" : [ "obj-102", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-106", 0 ],
														"destination" : [ "obj-105", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-106", 0 ],
														"destination" : [ "obj-98", 1 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-107", 0 ],
														"destination" : [ "obj-106", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-11", 0 ],
														"destination" : [ "obj-191", 0 ],
														"color" : [ 0.827451, 0.737255, 0.835294, 1.0 ],
														"midpoints" : [ 684.5, 339.5, 1164.5, 339.5 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-11", 0 ],
														"destination" : [ "obj-192", 0 ],
														"color" : [ 0.827451, 0.737255, 0.835294, 1.0 ],
														"midpoints" : [ 684.5, 339.5, 1014.5, 339.5 ],
														"order" : 2
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-11", 0 ],
														"destination" : [ "obj-193", 0 ],
														"color" : [ 0.827451, 0.737255, 0.835294, 1.0 ],
														"midpoints" : [ 684.5, 339.5, 864.5, 339.5 ],
														"order" : 4
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-11", 0 ],
														"destination" : [ "obj-197", 0 ],
														"color" : [ 0.827451, 0.737255, 0.835294, 1.0 ],
														"midpoints" : [ 684.5, 338.394897000000014, 1314.5, 338.394897000000014 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-11", 0 ],
														"destination" : [ "obj-40", 0 ],
														"color" : [ 0.827451, 0.737255, 0.835294, 1.0 ],
														"midpoints" : [ 684.5, 337.166503999999975, 114.5, 337.166503999999975 ],
														"order" : 9
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-11", 0 ],
														"destination" : [ "obj-41", 0 ],
														"color" : [ 0.827451, 0.737255, 0.835294, 1.0 ],
														"midpoints" : [ 684.5, 337.166503999999975, 264.5, 337.166503999999975 ],
														"order" : 8
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-11", 0 ],
														"destination" : [ "obj-42", 0 ],
														"color" : [ 0.827451, 0.737255, 0.835294, 1.0 ],
														"midpoints" : [ 684.5, 338.630584999999996, 564.5, 338.630584999999996 ],
														"order" : 6
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-11", 0 ],
														"destination" : [ "obj-43", 0 ],
														"color" : [ 0.827451, 0.737255, 0.835294, 1.0 ],
														"midpoints" : [ 684.5, 335.702392999999972, 414.5, 335.702392999999972 ],
														"order" : 7
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-11", 0 ],
														"destination" : [ "obj-51", 0 ],
														"color" : [ 0.827451, 0.737255, 0.835294, 1.0 ],
														"midpoints" : [ 684.5, 609.5, 684.5, 609.5 ],
														"order" : 5
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-11", 0 ],
														"destination" : [ "obj-62", 0 ],
														"color" : [ 0.827451, 0.737255, 0.835294, 1.0 ],
														"midpoints" : [ 684.5, 144.679504000000009, 939.5, 144.679504000000009 ],
														"order" : 3
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-114", 0 ],
														"destination" : [ "obj-112", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-116", 0 ],
														"destination" : [ "obj-114", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-116", 0 ],
														"destination" : [ "obj-120", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-119", 0 ],
														"destination" : [ "obj-116", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-120", 0 ],
														"destination" : [ "obj-112", 1 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-120", 0 ],
														"destination" : [ "obj-119", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-121", 0 ],
														"destination" : [ "obj-120", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-124", 0 ],
														"destination" : [ "obj-125", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-125", 0 ],
														"destination" : [ "obj-129", 1 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-125", 0 ],
														"destination" : [ "obj-131", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-127", 0 ],
														"destination" : [ "obj-129", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-129", 0 ],
														"destination" : [ "obj-107", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-131", 0 ],
														"destination" : [ "obj-121", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-14", 0 ],
														"destination" : [ "obj-17", 2 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-17", 0 ],
														"destination" : [ "obj-27", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-17", 0 ],
														"destination" : [ "obj-67", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-191", 0 ],
														"destination" : [ "obj-196", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-192", 0 ],
														"destination" : [ "obj-195", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-193", 0 ],
														"destination" : [ "obj-194", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-194", 0 ],
														"destination" : [ "obj-198", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-194", 0 ],
														"destination" : [ "obj-214", 1 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-195", 0 ],
														"destination" : [ "obj-201", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-195", 0 ],
														"destination" : [ "obj-214", 2 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-196", 0 ],
														"destination" : [ "obj-203", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-196", 0 ],
														"destination" : [ "obj-214", 3 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-197", 0 ],
														"destination" : [ "obj-205", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-197", 0 ],
														"destination" : [ "obj-214", 4 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-198", 0 ],
														"destination" : [ "obj-199", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-199", 0 ],
														"destination" : [ "obj-248", 1 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-199", 0 ],
														"destination" : [ "obj-274", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-200", 0 ],
														"destination" : [ "obj-247", 1 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-200", 0 ],
														"destination" : [ "obj-273", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-201", 0 ],
														"destination" : [ "obj-200", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-202", 0 ],
														"destination" : [ "obj-246", 1 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-202", 0 ],
														"destination" : [ "obj-272", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-203", 0 ],
														"destination" : [ "obj-202", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-204", 0 ],
														"destination" : [ "obj-245", 1 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-204", 0 ],
														"destination" : [ "obj-271", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-205", 0 ],
														"destination" : [ "obj-204", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-214", 0 ],
														"destination" : [ "obj-199", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-214", 1 ],
														"destination" : [ "obj-200", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-214", 2 ],
														"destination" : [ "obj-202", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-214", 3 ],
														"destination" : [ "obj-204", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-224", 0 ],
														"destination" : [ "obj-225", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-225", 0 ],
														"destination" : [ "obj-227", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-226", 0 ],
														"destination" : [ "obj-227", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-227", 0 ],
														"destination" : [ "obj-226", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-227", 0 ],
														"destination" : [ "obj-256", 1 ],
														"order" : 2
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-227", 0 ],
														"destination" : [ "obj-257", 1 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-229", 0 ],
														"destination" : [ "obj-225", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-231", 0 ],
														"destination" : [ "obj-232", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-232", 0 ],
														"destination" : [ "obj-234", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-233", 0 ],
														"destination" : [ "obj-234", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-234", 0 ],
														"destination" : [ "obj-233", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-234", 0 ],
														"destination" : [ "obj-258", 1 ],
														"order" : 2
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-234", 0 ],
														"destination" : [ "obj-260", 1 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-236", 0 ],
														"destination" : [ "obj-232", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-238", 0 ],
														"destination" : [ "obj-239", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-239", 0 ],
														"destination" : [ "obj-241", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-240", 0 ],
														"destination" : [ "obj-241", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-241", 0 ],
														"destination" : [ "obj-240", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-241", 0 ],
														"destination" : [ "obj-258", 0 ],
														"order" : 2
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-241", 0 ],
														"destination" : [ "obj-260", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-243", 0 ],
														"destination" : [ "obj-239", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-245", 0 ],
														"destination" : [ "obj-236", 0 ],
														"midpoints" : [ 534.5, 749.0, 488.5, 749.0, 488.5, 395.0, 504.5, 395.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-246", 0 ],
														"destination" : [ "obj-243", 0 ],
														"midpoints" : [ 384.5, 749.0, 339.5, 749.0, 339.5, 395.0, 354.5, 395.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-247", 0 ],
														"destination" : [ "obj-229", 0 ],
														"midpoints" : [ 234.5, 749.0, 188.5, 749.0, 188.5, 395.0, 204.5, 395.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-248", 0 ],
														"destination" : [ "obj-30", 0 ],
														"midpoints" : [ 84.5, 749.0, 39.5, 749.0, 39.5, 395.0, 54.500003999999997, 395.0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-256", 0 ],
														"destination" : [ "obj-259", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-256", 0 ],
														"destination" : [ "obj-263", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-257", 0 ],
														"destination" : [ "obj-261", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-257", 0 ],
														"destination" : [ "obj-262", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-258", 0 ],
														"destination" : [ "obj-259", 1 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-258", 0 ],
														"destination" : [ "obj-263", 1 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-259", 0 ],
														"destination" : [ "obj-286", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-260", 0 ],
														"destination" : [ "obj-261", 1 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-260", 0 ],
														"destination" : [ "obj-262", 1 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-261", 0 ],
														"destination" : [ "obj-287", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-262", 0 ],
														"destination" : [ "obj-264", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-263", 0 ],
														"destination" : [ "obj-289", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-264", 0 ],
														"destination" : [ "obj-288", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-266", 0 ],
														"destination" : [ "obj-292", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-267", 0 ],
														"destination" : [ "obj-293", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-269", 0 ],
														"destination" : [ "obj-293", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-27", 0 ],
														"destination" : [ "obj-17", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-270", 0 ],
														"destination" : [ "obj-292", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-271", 0 ],
														"destination" : [ "obj-294", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-272", 0 ],
														"destination" : [ "obj-295", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-273", 0 ],
														"destination" : [ "obj-294", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-274", 0 ],
														"destination" : [ "obj-295", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-276", 0 ],
														"destination" : [ "obj-302", 0 ],
														"midpoints" : [ 279.5, 879.5, 279.5, 879.5 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-277", 0 ],
														"destination" : [ "obj-302", 1 ],
														"midpoints" : [ 1074.5, 879.5, 293.0, 879.5 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-278", 0 ],
														"destination" : [ "obj-81", 0 ],
														"midpoints" : [ 279.5, 1020.479736000000003, 144.499968999999993, 1020.479736000000003 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-286", 0 ],
														"destination" : [ "obj-248", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-286", 0 ],
														"destination" : [ "obj-266", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-287", 0 ],
														"destination" : [ "obj-247", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-287", 0 ],
														"destination" : [ "obj-267", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-288", 0 ],
														"destination" : [ "obj-246", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-288", 0 ],
														"destination" : [ "obj-270", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-289", 0 ],
														"destination" : [ "obj-245", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-289", 0 ],
														"destination" : [ "obj-269", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-292", 0 ],
														"destination" : [ "obj-276", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-293", 0 ],
														"destination" : [ "obj-276", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-294", 0 ],
														"destination" : [ "obj-277", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-295", 0 ],
														"destination" : [ "obj-277", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-30", 0 ],
														"destination" : [ "obj-44", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-300", 0 ],
														"destination" : [ "obj-278", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-302", 0 ],
														"destination" : [ "obj-278", 0 ],
														"midpoints" : [ 279.5, 916.253906000000029, 279.5, 916.253906000000029 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-31", 0 ],
														"destination" : [ "obj-32", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-32", 0 ],
														"destination" : [ "obj-256", 0 ],
														"order" : 2
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-32", 0 ],
														"destination" : [ "obj-257", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-32", 0 ],
														"destination" : [ "obj-31", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-35", 0 ],
														"destination" : [ "obj-198", 1 ],
														"color" : [ 0.917647, 0.937255, 0.670588, 1.0 ],
														"midpoints" : [ 1134.5, 429.869415000000004, 954.5, 429.869415000000004 ],
														"order" : 3
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-35", 0 ],
														"destination" : [ "obj-201", 1 ],
														"color" : [ 0.917647, 0.937255, 0.670588, 1.0 ],
														"midpoints" : [ 1134.5, 429.869415000000004, 1104.5, 429.869415000000004 ],
														"order" : 2
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-35", 0 ],
														"destination" : [ "obj-203", 1 ],
														"color" : [ 0.917647, 0.937255, 0.670588, 1.0 ],
														"midpoints" : [ 1134.5, 431.333496000000025, 1254.5, 431.333496000000025 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-35", 0 ],
														"destination" : [ "obj-205", 1 ],
														"color" : [ 0.917647, 0.937255, 0.670588, 1.0 ],
														"midpoints" : [ 1134.5, 428.405304000000001, 1404.5, 428.405304000000001 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-35", 0 ],
														"destination" : [ "obj-224", 1 ],
														"color" : [ 0.917647, 0.937255, 0.670588, 1.0 ],
														"midpoints" : [ 1134.5, 429.0, 313.5, 429.0 ],
														"order" : 6
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-35", 0 ],
														"destination" : [ "obj-231", 1 ],
														"color" : [ 0.917647, 0.937255, 0.670588, 1.0 ],
														"midpoints" : [ 1134.5, 429.0, 613.5, 429.0 ],
														"order" : 4
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-35", 0 ],
														"destination" : [ "obj-238", 1 ],
														"color" : [ 0.917647, 0.937255, 0.670588, 1.0 ],
														"midpoints" : [ 1134.5, 429.0, 463.5, 429.0 ],
														"order" : 5
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-35", 0 ],
														"destination" : [ "obj-45", 1 ],
														"color" : [ 0.917647, 0.937255, 0.670588, 1.0 ],
														"midpoints" : [ 1134.5, 429.0, 163.5, 429.0 ],
														"order" : 7
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-40", 0 ],
														"destination" : [ "obj-30", 1 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-40", 0 ],
														"destination" : [ "obj-45", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-41", 0 ],
														"destination" : [ "obj-224", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-41", 0 ],
														"destination" : [ "obj-229", 1 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-42", 0 ],
														"destination" : [ "obj-231", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-42", 0 ],
														"destination" : [ "obj-236", 1 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-43", 0 ],
														"destination" : [ "obj-238", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-43", 0 ],
														"destination" : [ "obj-243", 1 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-44", 0 ],
														"destination" : [ "obj-32", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-45", 0 ],
														"destination" : [ "obj-44", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-5", 0 ],
														"destination" : [ "obj-227", 2 ],
														"midpoints" : [ 549.5, 534.0, 231.5, 534.0 ],
														"order" : 2
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-5", 0 ],
														"destination" : [ "obj-234", 2 ],
														"midpoints" : [ 549.5, 534.0, 531.5, 534.0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-5", 0 ],
														"destination" : [ "obj-241", 2 ],
														"midpoints" : [ 549.5, 534.0, 381.5, 534.0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-5", 0 ],
														"destination" : [ "obj-32", 2 ],
														"midpoints" : [ 549.5, 534.0, 81.50000399999999, 534.0 ],
														"order" : 3
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-51", 0 ],
														"destination" : [ "obj-52", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-52", 0 ],
														"destination" : [ "obj-107", 0 ],
														"color" : [ 0.67451, 0.819608, 0.572549, 1.0 ],
														"midpoints" : [ 684.5, 1149.5, 369.5, 1149.5 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-52", 0 ],
														"destination" : [ "obj-121", 0 ],
														"color" : [ 0.67451, 0.819608, 0.572549, 1.0 ],
														"midpoints" : [ 684.5, 1149.5, 519.50006099999996, 1149.5 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-52", 0 ],
														"destination" : [ "obj-86", 0 ],
														"color" : [ 0.67451, 0.819608, 0.572549, 1.0 ],
														"midpoints" : [ 684.5, 1149.5, 219.499968999999993, 1149.5 ],
														"order" : 2
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-62", 0 ],
														"destination" : [ "obj-63", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-63", 0 ],
														"destination" : [ "obj-64", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-63", 0 ],
														"destination" : [ "obj-74", 1 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-64", 0 ],
														"destination" : [ "obj-67", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-67", 0 ],
														"destination" : [ "obj-63", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-67", 0 ],
														"destination" : [ "obj-72", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-72", 0 ],
														"destination" : [ "obj-74", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-74", 0 ],
														"destination" : [ "obj-214", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-77", 0 ],
														"destination" : [ "obj-102", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-79", 0 ],
														"destination" : [ "obj-77", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-81", 0 ],
														"destination" : [ "obj-79", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-81", 0 ],
														"destination" : [ "obj-85", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-84", 0 ],
														"destination" : [ "obj-81", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-85", 0 ],
														"destination" : [ "obj-77", 1 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-85", 0 ],
														"destination" : [ "obj-84", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-86", 0 ],
														"destination" : [ "obj-85", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-88", 0 ],
														"destination" : [ "obj-127", 0 ],
														"order" : 0
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-88", 0 ],
														"destination" : [ "obj-95", 0 ],
														"order" : 1
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-95", 0 ],
														"destination" : [ "obj-86", 1 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-98", 0 ],
														"destination" : [ "obj-116", 0 ]
													}

												}
 ]
										}

									}
,
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 58.0, 242.0, 72.0, 23.0 ],
									"rnbo_classname" : "gen~",
									"rnbo_extra_attributes" : 									{
										"exposeparams" : 0
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "gen~_obj-11",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "in1",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "number"
											}
,
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset all param and history objects to initial values",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"expr" : 											{
												"attrOrProp" : 2,
												"digest" : "a gen expression",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"file" : 											{
												"attrOrProp" : 2,
												"digest" : "gendsp file to load",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"title" : 											{
												"attrOrProp" : 2,
												"digest" : "a title",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [ "t" ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"t" : 											{
												"attrOrProp" : 2,
												"digest" : "a title",
												"defaultarg" : 1,
												"isalias" : 1,
												"aliasOf" : "title",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"exposeparams" : 											{
												"attrOrProp" : 2,
												"digest" : "Expose gen params as RNBO params.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "false"
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "auto",
												"digest" : "in1",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "in2",
												"type" : "auto"
											}
, 											{
												"name" : "in3",
												"type" : "auto"
											}
, 											{
												"name" : "in4",
												"type" : "auto"
											}
, 											{
												"name" : "in5",
												"type" : "auto"
											}
 ],
										"outputs" : [ 											{
												"name" : "out1",
												"type" : "signal"
											}
 ],
										"helpname" : "gen~",
										"aliasOf" : "gen~",
										"classname" : "gen~",
										"operator" : 0,
										"versionId" : 1405647718,
										"changesPatcherIO" : 0
									}
,
									"text" : "gen~"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 3 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 4 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 2 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"default_bgcolor" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
						"color" : [ 0.929412, 0.929412, 0.352941, 1.0 ],
						"elementcolor" : [ 0.357540726661682, 0.515565991401672, 0.861786782741547, 1.0 ],
						"accentcolor" : [ 0.343034118413925, 0.506230533123016, 0.86220508813858, 1.0 ],
						"stripecolor" : [ 0.258338063955307, 0.352425158023834, 0.511919498443604, 1.0 ],
						"bgfillcolor_type" : "color",
						"bgfillcolor_color" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
						"bgfillcolor_color1" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
						"bgfillcolor_color2" : [ 0.263682, 0.004541, 0.038797, 1.0 ],
						"bgfillcolor_angle" : 270.0,
						"bgfillcolor_proportion" : 0.39,
						"bgfillcolor_autogradient" : 0.0
					}
,
					"patching_rect" : [ 297.0, 179.0, 40.0, 22.0 ],
					"rnboattrcache" : 					{
						"dryWet" : 						{
							"label" : "dryWet",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"revtime" : 						{
							"label" : "revtime",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"roomsize" : 						{
							"label" : "roomsize",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"tail" : 						{
							"label" : "tail",
							"isEnum" : 0,
							"parsestring" : ""
						}

					}
,
					"rnboversion" : "1.2.6",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "rnbo~",
							"parameter_modmode" : 0,
							"parameter_shortname" : "rnbo~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"optimization" : "O1",
						"parameter_enable" : 1,
						"uuid" : "fd9a9339-9fdd-11ef-9339-f0b61e586e10"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "rnbo~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"__presetid" : "fd9a9339-9fdd-11ef-9339-f0b61e586e10",
							"revtime" : 							{
								"value" : 1.0
							}
,
							"tail" : 							{
								"value" : 0.9
							}
,
							"roomsize" : 							{
								"value" : 131.0
							}
,
							"dryWet" : 							{
								"value" : 0.9
							}

						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "untitled",
									"origin" : "fd9a9339-9fdd-11ef-9339-f0b61e586e10",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 0,
									"snapshot" : 									{
										"__presetid" : "fd9a9339-9fdd-11ef-9339-f0b61e586e10",
										"revtime" : 										{
											"value" : 1.0
										}
,
										"tail" : 										{
											"value" : 0.9
										}
,
										"roomsize" : 										{
											"value" : 131.0
										}
,
										"dryWet" : 										{
											"value" : 0.9
										}

									}
,
									"fileref" : 									{
										"name" : "untitled",
										"filename" : "untitled_20241110_1.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "51112b97b691337f6c5870981139d485"
									}

								}
 ]
						}

					}
,
					"text" : "rnbo~",
					"varname" : "rnbo~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1" : [ "rnbo~", "rnbo~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "cherokee.aif",
				"bootpath" : "C74:/media/msp",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "untitled_20241110_1.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
