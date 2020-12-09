.class public Lcom/android/server/voiceinteraction/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;,
        Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelContract;
    }
.end annotation


# static fields
.field private static final CREATE_TABLE_SOUND_MODEL:Ljava/lang/String; = "CREATE TABLE sound_model(model_uuid TEXT,vendor_uuid TEXT,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT,PRIMARY KEY (keyphrase_id,locale,users))"

.field static final DBG:Z = false

.field private static final NAME:Ljava/lang/String; = "sound_model.db"

.field static final TAG:Ljava/lang/String; = "SoundModelDBHelper"

.field private static final VERSION:I = 0x6


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 79
    const-string/jumbo v0, "sound_model.db"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 80
    return-void
.end method

.method private static getArrayForCommaSeparatedString(Ljava/lang/String;)[I
    .registers 4

    .line 317
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 318
    const/4 p0, 0x0

    return-object p0

    .line 320
    :cond_8
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 321
    array-length v0, p0

    new-array v0, v0, [I

    .line 322
    const/4 v1, 0x0

    :goto_12
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 323
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 325
    :cond_20
    return-object v0
.end method

.method private static getCommaSeparatedString([I)Ljava/lang/String;
    .registers 4

    .line 303
    if-nez p0, :cond_5

    .line 304
    const-string p0, ""

    return-object p0

    .line 306
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    const/4 v1, 0x0

    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_1d

    .line 308
    if-eqz v1, :cond_15

    .line 309
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    :cond_15
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 313
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deleteKeyphraseSoundModel(IILjava/lang/String;)Z
    .registers 6

    .line 183
    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p3

    .line 184
    monitor-enter p0

    .line 185
    :try_start_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object p1

    .line 187
    const/4 p2, 0x0

    if-nez p1, :cond_12

    .line 188
    monitor-exit p0

    return p2

    .line 192
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "model_uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    .line 194
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_47

    .line 196
    :try_start_32
    const-string/jumbo v0, "sound_model"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_42

    if-eqz p1, :cond_3d

    const/4 p2, 0x1

    .line 198
    :cond_3d
    :try_start_3d
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    .line 196
    return p2

    .line 198
    :catchall_42
    move-exception p1

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw p1

    .line 200
    :catchall_47
    move-exception p1

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_47

    throw p1
.end method

.method public getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .registers 20

    .line 212
    invoke-static/range {p3 .. p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 213
    monitor-enter p0

    .line 215
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT  * FROM sound_model WHERE keyphrase_id= \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\' AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "locale"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 219
    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_3c
    .catchall {:try_start_9 .. :try_end_3c} :catchall_124

    .line 222
    :try_start_3c
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 224
    :goto_42
    const-string/jumbo v0, "type"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 225
    if-eqz v0, :cond_53

    .line 229
    move/from16 v9, p2

    goto/16 :goto_da

    .line 232
    :cond_53
    const-string v0, "model_uuid"

    .line 233
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 232
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    if-nez v0, :cond_6a

    .line 235
    const-string v0, "SoundModelDBHelper"

    const-string v3, "Ignoring SoundModel since it doesn\'t specify an ID"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    move/from16 v9, p2

    goto/16 :goto_da

    .line 239
    :cond_6a
    nop

    .line 240
    const-string/jumbo v3, "vendor_uuid"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 241
    const/4 v4, -0x1

    if-eq v3, v4, :cond_7b

    .line 242
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_7c

    .line 241
    :cond_7b
    move-object v11, v9

    .line 244
    :goto_7c
    const-string v3, "data"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 245
    const-string/jumbo v3, "recognition_modes"

    .line 246
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 245
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 247
    const-string/jumbo v3, "users"

    .line 248
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-static {v3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getArrayForCommaSeparatedString(Ljava/lang/String;)[I

    move-result-object v8

    .line 249
    const-string v3, "locale"

    .line 250
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 249
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 251
    const-string v3, "hint_text"

    .line 252
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 251
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 255
    if-nez v8, :cond_c0

    .line 257
    const-string v0, "SoundModelDBHelper"

    const-string v3, "Ignoring SoundModel since it doesn\'t specify users"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    move/from16 v9, p2

    goto :goto_da

    .line 261
    :cond_c0
    nop

    .line 262
    array-length v3, v8

    const/4 v13, 0x0

    move v4, v13

    :goto_c4
    const/4 v14, 0x1

    if-ge v4, v3, :cond_d4

    aget v15, v8, v4

    .line 263
    move/from16 v9, p2

    if-ne v9, v15, :cond_d0

    .line 264
    nop

    .line 265
    move v3, v14

    goto :goto_d7

    .line 262
    :cond_d0
    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x0

    goto :goto_c4

    :cond_d4
    move/from16 v9, p2

    move v3, v13

    .line 268
    :goto_d7
    if-nez v3, :cond_e4

    .line 272
    nop

    .line 291
    :goto_da
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_e1

    goto :goto_10b

    :cond_e1
    const/4 v9, 0x0

    goto/16 :goto_42

    .line 277
    :cond_e4
    new-array v9, v14, [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 278
    new-instance v14, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-object v3, v14

    move/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/lang/String;Ljava/lang/String;[I)V

    aput-object v14, v9, v13

    .line 280
    nop

    .line 281
    if-eqz v11, :cond_f8

    .line 282
    invoke-static {v11}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    goto :goto_f9

    .line 281
    :cond_f8
    const/4 v2, 0x0

    .line 284
    :goto_f9
    new-instance v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 285
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-direct {v3, v0, v2, v12, v9}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[B[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)V
    :try_end_102
    .catchall {:try_start_3c .. :try_end_102} :catchall_11c

    .line 290
    nop

    .line 295
    :try_start_103
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 296
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0
    :try_end_10a
    .catchall {:try_start_103 .. :try_end_10a} :catchall_124

    .line 290
    return-object v3

    .line 293
    :cond_10b
    :goto_10b
    :try_start_10b
    const-string v0, "SoundModelDBHelper"

    const-string v2, "No SoundModel available for the given keyphrase"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_112
    .catchall {:try_start_10b .. :try_end_112} :catchall_11c

    .line 295
    :try_start_112
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 296
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 297
    nop

    .line 298
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 295
    :catchall_11c
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 296
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    .line 299
    :catchall_124
    move-exception v0

    monitor-exit p0
    :try_end_126
    .catchall {:try_start_112 .. :try_end_126} :catchall_124

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 85
    const-string v0, "CREATE TABLE sound_model(model_uuid TEXT,vendor_uuid TEXT,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT,PRIMARY KEY (keyphrase_id,locale,users))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 11

    .line 90
    const-string p3, "DROP TABLE IF EXISTS sound_model"

    const/4 v0, 0x4

    const-string v1, "SoundModelDBHelper"

    if-ge p2, v0, :cond_e

    .line 92
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1c

    .line 96
    :cond_e
    if-ne p2, v0, :cond_1c

    .line 97
    const-string v0, "Adding vendor UUID column"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v0, "ALTER TABLE sound_model ADD COLUMN vendor_uuid TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    add-int/lit8 p2, p2, 0x1

    .line 103
    :cond_1c
    :goto_1c
    const/4 v0, 0x5

    if-ne p2, v0, :cond_af

    .line 108
    nop

    .line 109
    const/4 p2, 0x0

    const-string v2, "SELECT * FROM sound_model"

    invoke-virtual {p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    :try_start_2c
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_aa

    if-eqz v3, :cond_47

    .line 115
    :cond_32
    :try_start_32
    new-instance v3, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    invoke-direct {v3, v0, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;-><init>(ILandroid/database/Cursor;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3a} :catch_3b
    .catchall {:try_start_32 .. :try_end_3a} :catchall_aa

    .line 118
    goto :goto_41

    .line 116
    :catch_3b
    move-exception v3

    .line 117
    :try_start_3c
    const-string v4, "Failed to extract V5 record"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :goto_41
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_aa

    if-nez v3, :cond_32

    .line 122
    :cond_47
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 123
    nop

    .line 124
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 126
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_55
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .line 127
    invoke-virtual {p3, v2}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->ifViolatesV6PrimaryKeyIsFirstOfAnyDuplicates(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 129
    const/4 v0, 0x6

    :try_start_68
    invoke-virtual {p3, v0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->writeToDatabase(ILandroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v3

    .line 130
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_90

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Database write failed "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p3, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_90} :catch_91

    .line 136
    :cond_90
    goto :goto_a8

    .line 134
    :catch_91
    move-exception v0

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update V6 record "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    :cond_a8
    :goto_a8
    goto :goto_55

    .line 139
    :cond_a9
    goto :goto_af

    .line 122
    :catchall_aa
    move-exception p1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw p1

    .line 141
    :cond_af
    :goto_af
    return-void
.end method

.method public updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z
    .registers 9

    .line 149
    monitor-enter p0

    .line 150
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 151
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 152
    const-string v2, "model_uuid"

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->vendorUuid:Ljava/util/UUID;

    if-eqz v2, :cond_25

    .line 154
    const-string/jumbo v2, "vendor_uuid"

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->vendorUuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_25
    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v2, "data"

    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->data:[B

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 159
    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    if-eqz v2, :cond_a0

    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    array-length v2, v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a0

    .line 160
    const-string v2, "keyphrase_id"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string/jumbo v2, "recognition_modes"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    .line 162
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 161
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string/jumbo v2, "users"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    .line 164
    invoke-static {v5}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getCommaSeparatedString([I)Ljava/lang/String;

    move-result-object v5

    .line 163
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v2, "locale"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v2, "hint_text"

    iget-object p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object p1, p1, v3

    iget-object p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_1 .. :try_end_86} :catchall_a2

    .line 168
    :try_start_86
    const-string/jumbo p1, "sound_model"

    const/4 v2, 0x0

    const/4 v5, 0x5

    invoke-virtual {v0, p1, v2, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_9b

    const-wide/16 v5, -0x1

    cmp-long p1, v1, v5

    if-eqz p1, :cond_96

    move v3, v4

    .line 171
    :cond_96
    :try_start_96
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    .line 168
    return v3

    .line 171
    :catchall_9b
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw p1

    .line 174
    :cond_a0
    monitor-exit p0

    return v3

    .line 175
    :catchall_a2
    move-exception p1

    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_96 .. :try_end_a4} :catchall_a2

    throw p1
.end method
