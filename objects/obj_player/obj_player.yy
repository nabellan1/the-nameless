{
    "id": "d5c57f07-8f51-4e49-9274-66f2a9b4e1d6",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_player",
    "eventList": [
        {
            "id": "df4d08ac-f893-4f6e-a50c-e0ed130335d0",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "d5c57f07-8f51-4e49-9274-66f2a9b4e1d6"
        },
        {
            "id": "2571d424-8202-44b1-8a26-30cb1b166d31",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 2,
            "m_owner": "d5c57f07-8f51-4e49-9274-66f2a9b4e1d6"
        },
        {
            "id": "4ab57146-a049-41c5-a5db-e45ab2b40e9c",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 1,
            "eventtype": 2,
            "m_owner": "d5c57f07-8f51-4e49-9274-66f2a9b4e1d6"
        },
        {
            "id": "6dff6bbf-c6f6-4e96-bde8-14f7fa602739",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "d5c57f07-8f51-4e49-9274-66f2a9b4e1d6"
        },
        {
            "id": "d3038ba0-be5d-42d6-b21f-80c8a183c171",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "d5c57f07-8f51-4e49-9274-66f2a9b4e1d6"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "83f87623-7fe9-4fae-b1ad-a47993356a50",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "5245bd5d-f63a-4405-8fd0-b6f496608005",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "100",
            "varName": "maxHp",
            "varType": 0
        },
        {
            "id": "f7a8bfed-0643-4542-997f-284d2bad4ac9",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "7",
            "varName": "spd",
            "varType": 0
        },
        {
            "id": "413389b6-7bf1-4a51-a6ba-519edf48f3f2",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.5",
            "varName": "aspd",
            "varType": 0
        },
        {
            "id": "7ee9e060-4a03-49e3-bb1a-834235776237",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "10",
            "varName": "dmg",
            "varType": 0
        },
        {
            "id": "178caeed-ce28-4abd-a074-1984f41f3670",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "spr_player",
            "varName": "spriteDown",
            "varType": 5
        },
        {
            "id": "e815a501-0b67-4c76-a3f1-03a29ed70d3b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "spr_player",
            "varName": "spriteUp",
            "varType": 5
        },
        {
            "id": "b96ff43b-9877-4e4f-a7d6-125d24c7456b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "spr_player",
            "varName": "spriteLeft",
            "varType": 5
        },
        {
            "id": "aebef107-e1f0-4245-9e55-34d4f6cb2564",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "spr_player",
            "varName": "spriteRight",
            "varType": 5
        }
    ],
    "solid": false,
    "spriteId": "63dff2ac-23cf-4bdb-8c88-673ce2312d78",
    "visible": true
}