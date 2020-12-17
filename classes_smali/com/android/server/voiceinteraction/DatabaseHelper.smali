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
    .param p1, "context"  # Landroid/content/Context;

    .line 79
    const-string/jumbo v0, "sound_model.db"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 80
    return-void
.end method

.method private static getArrayForCommaSeparatedString(Ljava/lang/String;)[I
    .registers 5
    .param p0, "text"  # Ljava/lang/String;

    .line 317
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 318
    const/4 v0, 0x0

    return-object v0

    .line 320
    :cond_8
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "usersStr":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 322
    .local v1, "users":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    array-length v3, v0

    if-ge v2, v3, :cond_20

    .line 323
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 325
    .end local v2  # "i":I
    :cond_20
    return-object v1
.end method

.method private static getCommaSeparatedString([I)Ljava/lang/String;
    .registers 4
    .param p0, "users"  # [I

    .line 303
    if-nez p0, :cond_5

    .line 304
    const-string v0, ""

    return-object v0

    .line 306
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
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
    .end local v1  # "i":I
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public deleteKeyphraseSoundModel(IILjava/lang/String;)Z
    .registers 10
    .param p1, "keyphraseId"  # I
    .param p2, "userHandle"  # I
    .param p3, "bcp47Locale"  # Ljava/lang/String;

    .line 183
    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p3

    .line 184
    monitor-enter p0

    .line 185
    :try_start_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object v0

    .line 187
    .local v0, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 188
    monitor-exit p0

    return v1

    .line 192
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 193
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "model_uuid=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    .line 194
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_48

    .line 196
    .local v3, "soundModelClause":Ljava/lang/String;
    :try_start_33
    const-string/jumbo v4, "sound_model"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_43

    if-eqz v4, :cond_3e

    const/4 v1, 0x1

    .line 198
    :cond_3e
    :try_start_3e
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    .line 196
    return v1

    .line 198
    :catchall_43
    move-exception v1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .end local p0  # "this":Lcom/android/server/voiceinteraction/DatabaseHelper;
    .end local p1  # "keyphraseId":I
    .end local p2  # "userHandle":I
    .end local p3  # "bcp47Locale":Ljava/lang/String;
    throw v1

    .line 200
    .end local v0  # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .end local v2  # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3  # "soundModelClause":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/voiceinteraction/DatabaseHelper;
    .restart local p1  # "keyphraseId":I
    .restart local p2  # "userHandle":I
    .restart local p3  # "bcp47Locale":Ljava/lang/String;
    :catchall_48
    move-exception v0

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .registers 25
    .param p1, "keyphraseId"  # I
    .param p2, "userHandle"  # I
    .param p3, "bcp47Locale"  # Ljava/lang/String;

    .line 212
    invoke-static/range {p3 .. p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 213
    .end local p3  # "bcp47Locale":Ljava/lang/String;
    .local v1, "bcp47Locale":Ljava/lang/String;
    monitor-enter p0

    .line 215
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT  * FROM sound_model WHERE keyphrase_id= \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\' AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "locale"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 218
    .local v9, "selectQuery":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v10, v0

    .line 219
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    invoke-virtual {v10, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_3f
    .catchall {:try_start_9 .. :try_end_3f} :catchall_161

    move-object v11, v3

    .line 222
    .local v11, "c":Landroid/database/Cursor;
    :try_start_40
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_13e

    .line 224
    :goto_46
    const-string/jumbo v3, "type"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v12, v3

    .line 225
    .local v12, "type":I
    if-eqz v12, :cond_5a

    .line 229
    move-object/from16 v18, v1

    move/from16 v1, p2

    goto/16 :goto_101

    .line 232
    :cond_5a
    const-string/jumbo v3, "model_uuid"

    .line 233
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 232
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_65
    .catchall {:try_start_40 .. :try_end_65} :catchall_155

    move-object v13, v3

    .line 234
    .local v13, "modelUuid":Ljava/lang/String;
    if-nez v13, :cond_7c

    .line 235
    :try_start_68
    const-string v3, "SoundModelDBHelper"

    const-string v4, "Ignoring SoundModel since it doesn\'t specify an ID"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_75

    .line 236
    move-object/from16 v18, v1

    move/from16 v1, p2

    goto/16 :goto_101

    .line 295
    .end local v12  # "type":I
    .end local v13  # "modelUuid":Ljava/lang/String;
    :catchall_75
    move-exception v0

    move-object/from16 v18, v1

    move/from16 v1, p2

    goto/16 :goto_15a

    .line 239
    .restart local v12  # "type":I
    .restart local v13  # "modelUuid":Ljava/lang/String;
    :cond_7c
    const/4 v3, 0x0

    .line 240
    .local v3, "vendorUuidString":Ljava/lang/String;
    :try_start_7d
    const-string/jumbo v4, "vendor_uuid"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_155

    move v14, v4

    .line 241
    .local v14, "vendorUuidColumn":I
    const/4 v4, -0x1

    if-eq v14, v4, :cond_8f

    .line 242
    :try_start_88
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_75

    move-object v3, v4

    move-object v15, v3

    goto :goto_90

    .line 241
    :cond_8f
    move-object v15, v3

    .line 244
    .end local v3  # "vendorUuidString":Ljava/lang/String;
    .local v15, "vendorUuidString":Ljava/lang/String;
    :goto_90
    :try_start_90
    const-string v3, "data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object v8, v3

    .line 245
    .local v8, "data":[B
    const-string/jumbo v3, "recognition_modes"

    .line 246
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 245
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 247
    .local v5, "recognitionModes":I
    const-string/jumbo v3, "users"

    .line 248
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-static {v3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getArrayForCommaSeparatedString(Ljava/lang/String;)[I

    move-result-object v3

    move-object v4, v3

    .line 249
    .local v4, "users":[I
    const-string/jumbo v3, "locale"

    .line 250
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 249
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 251
    .local v6, "modelLocale":Ljava/lang/String;
    const-string v3, "hint_text"

    .line 252
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 251
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_cb
    .catchall {:try_start_90 .. :try_end_cb} :catchall_155

    .line 255
    .local v7, "text":Ljava/lang/String;
    if-nez v4, :cond_d9

    .line 257
    :try_start_cd
    const-string v3, "SoundModelDBHelper"

    const-string v0, "Ignoring SoundModel since it doesn\'t specify users"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_cd .. :try_end_d4} :catchall_75

    .line 258
    move-object/from16 v18, v1

    move/from16 v1, p2

    goto :goto_101

    .line 261
    :cond_d9
    const/4 v0, 0x0

    .line 262
    .local v0, "isAvailableForCurrentUser":Z
    :try_start_da
    array-length v3, v4

    const/16 v16, 0x0

    move/from16 v17, v0

    move/from16 v0, v16

    .end local v0  # "isAvailableForCurrentUser":Z
    .local v17, "isAvailableForCurrentUser":Z
    :goto_e1
    if-ge v0, v3, :cond_f8

    aget v18, v4, v0
    :try_end_e5
    .catchall {:try_start_da .. :try_end_e5} :catchall_155

    move/from16 v19, v18

    .line 263
    .local v19, "user":I
    move-object/from16 v18, v1

    move/from16 v2, v19

    move/from16 v1, p2

    .end local v1  # "bcp47Locale":Ljava/lang/String;
    .end local v19  # "user":I
    .local v2, "user":I
    .local v18, "bcp47Locale":Ljava/lang/String;
    if-ne v1, v2, :cond_f1

    .line 264
    const/4 v0, 0x1

    .line 265
    .end local v17  # "isAvailableForCurrentUser":Z
    .restart local v0  # "isAvailableForCurrentUser":Z
    goto :goto_fe

    .line 262
    .end local v0  # "isAvailableForCurrentUser":Z
    .end local v2  # "user":I
    .restart local v17  # "isAvailableForCurrentUser":Z
    :cond_f1
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, p1

    move-object/from16 v1, v18

    goto :goto_e1

    .end local v18  # "bcp47Locale":Ljava/lang/String;
    .restart local v1  # "bcp47Locale":Ljava/lang/String;
    :cond_f8
    move-object/from16 v18, v1

    move/from16 v1, p2

    .end local v1  # "bcp47Locale":Ljava/lang/String;
    .restart local v18  # "bcp47Locale":Ljava/lang/String;
    move/from16 v0, v17

    .line 268
    .end local v17  # "isAvailableForCurrentUser":Z
    .restart local v0  # "isAvailableForCurrentUser":Z
    :goto_fe
    if-nez v0, :cond_10f

    .line 272
    nop

    .line 291
    .end local v0  # "isAvailableForCurrentUser":Z
    .end local v4  # "users":[I
    .end local v5  # "recognitionModes":I
    .end local v6  # "modelLocale":Ljava/lang/String;
    .end local v7  # "text":Ljava/lang/String;
    .end local v8  # "data":[B
    .end local v12  # "type":I
    .end local v13  # "modelUuid":Ljava/lang/String;
    .end local v14  # "vendorUuidColumn":I
    .end local v15  # "vendorUuidString":Ljava/lang/String;
    :goto_101
    :try_start_101
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_108

    goto :goto_142

    :cond_108
    move/from16 v2, p1

    move-object/from16 v1, v18

    const/4 v0, 0x0

    goto/16 :goto_46

    .line 277
    .restart local v0  # "isAvailableForCurrentUser":Z
    .restart local v4  # "users":[I
    .restart local v5  # "recognitionModes":I
    .restart local v6  # "modelLocale":Ljava/lang/String;
    .restart local v7  # "text":Ljava/lang/String;
    .restart local v8  # "data":[B
    .restart local v12  # "type":I
    .restart local v13  # "modelUuid":Ljava/lang/String;
    .restart local v14  # "vendorUuidColumn":I
    .restart local v15  # "vendorUuidString":Ljava/lang/String;
    :cond_10f
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 278
    .local v2, "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    new-instance v17, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-object/from16 v3, v17

    move-object/from16 v19, v4

    .end local v4  # "users":[I
    .local v19, "users":[I
    move/from16 v4, p1

    move/from16 v20, v0

    move-object v0, v8

    .end local v8  # "data":[B
    .local v0, "data":[B
    .local v20, "isAvailableForCurrentUser":Z
    move-object/from16 v8, v19

    invoke-direct/range {v3 .. v8}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/lang/String;Ljava/lang/String;[I)V

    aput-object v17, v2, v16

    .line 280
    const/4 v3, 0x0

    .line 281
    .local v3, "vendorUuid":Ljava/util/UUID;
    if-eqz v15, :cond_12c

    .line 282
    invoke-static {v15}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    move-object v3, v4

    .line 284
    :cond_12c
    new-instance v4, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 285
    invoke-static {v13}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v4, v8, v3, v0, v2}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[B[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)V
    :try_end_135
    .catchall {:try_start_101 .. :try_end_135} :catchall_153

    .line 290
    .local v4, "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    nop

    .line 295
    :try_start_136
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 296
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0
    :try_end_13d
    .catchall {:try_start_136 .. :try_end_13d} :catchall_168

    .line 290
    return-object v4

    .line 222
    .end local v0  # "data":[B
    .end local v2  # "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    .end local v3  # "vendorUuid":Ljava/util/UUID;
    .end local v4  # "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .end local v5  # "recognitionModes":I
    .end local v6  # "modelLocale":Ljava/lang/String;
    .end local v7  # "text":Ljava/lang/String;
    .end local v12  # "type":I
    .end local v13  # "modelUuid":Ljava/lang/String;
    .end local v14  # "vendorUuidColumn":I
    .end local v15  # "vendorUuidString":Ljava/lang/String;
    .end local v18  # "bcp47Locale":Ljava/lang/String;
    .end local v19  # "users":[I
    .end local v20  # "isAvailableForCurrentUser":Z
    .restart local v1  # "bcp47Locale":Ljava/lang/String;
    :cond_13e
    move-object/from16 v18, v1

    move/from16 v1, p2

    .line 293
    .end local v1  # "bcp47Locale":Ljava/lang/String;
    .restart local v18  # "bcp47Locale":Ljava/lang/String;
    :goto_142
    :try_start_142
    const-string v0, "SoundModelDBHelper"

    const-string v2, "No SoundModel available for the given keyphrase"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_149
    .catchall {:try_start_142 .. :try_end_149} :catchall_153

    .line 295
    :try_start_149
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 296
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 297
    nop

    .line 298
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 295
    :catchall_153
    move-exception v0

    goto :goto_15a

    .end local v18  # "bcp47Locale":Ljava/lang/String;
    .restart local v1  # "bcp47Locale":Ljava/lang/String;
    :catchall_155
    move-exception v0

    move-object/from16 v18, v1

    move/from16 v1, p2

    .end local v1  # "bcp47Locale":Ljava/lang/String;
    .restart local v18  # "bcp47Locale":Ljava/lang/String;
    :goto_15a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 296
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .end local v18  # "bcp47Locale":Ljava/lang/String;
    .end local p0  # "this":Lcom/android/server/voiceinteraction/DatabaseHelper;
    .end local p1  # "keyphraseId":I
    .end local p2  # "userHandle":I
    throw v0

    .line 299
    .end local v9  # "selectQuery":Ljava/lang/String;
    .end local v10  # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11  # "c":Landroid/database/Cursor;
    .restart local v1  # "bcp47Locale":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/voiceinteraction/DatabaseHelper;
    .restart local p1  # "keyphraseId":I
    .restart local p2  # "userHandle":I
    :catchall_161
    move-exception v0

    move-object/from16 v18, v1

    move/from16 v1, p2

    .end local v1  # "bcp47Locale":Ljava/lang/String;
    .restart local v18  # "bcp47Locale":Ljava/lang/String;
    :goto_166
    monitor-exit p0
    :try_end_167
    .catchall {:try_start_149 .. :try_end_167} :catchall_168

    throw v0

    :catchall_168
    move-exception v0

    goto :goto_166
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"  # Landroid/database/sqlite/SQLiteDatabase;

    .line 85
    const-string v0, "CREATE TABLE sound_model(model_uuid TEXT,vendor_uuid TEXT,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT,PRIMARY KEY (keyphrase_id,locale,users))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 14
    .param p1, "db"  # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"  # I
    .param p3, "newVersion"  # I

    .line 90
    const-string v0, "DROP TABLE IF EXISTS sound_model"

    const/4 v1, 0x4

    const-string v2, "SoundModelDBHelper"

    if-ge p2, v1, :cond_e

    .line 92
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1c

    .line 96
    :cond_e
    if-ne p2, v1, :cond_1c

    .line 97
    const-string v1, "Adding vendor UUID column"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v1, "ALTER TABLE sound_model ADD COLUMN vendor_uuid TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    add-int/lit8 p2, p2, 0x1

    .line 103
    :cond_1c
    :goto_1c
    const/4 v1, 0x5

    if-ne p2, v1, :cond_b0

    .line 108
    const-string v3, "SELECT * FROM sound_model"

    .line 109
    .local v3, "selectQuery":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 110
    .local v4, "c":Landroid/database/Cursor;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v5, "old_records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;>;"
    :try_start_2b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_ab

    if-eqz v6, :cond_46

    .line 115
    :cond_31
    :try_start_31
    new-instance v6, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    invoke-direct {v6, v1, v4}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;-><init>(ILandroid/database/Cursor;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_39} :catch_3a
    .catchall {:try_start_31 .. :try_end_39} :catchall_ab

    .line 118
    goto :goto_40

    .line 116
    :catch_3a
    move-exception v6

    .line 117
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3b
    const-string v7, "Failed to extract V5 record"

    invoke-static {v2, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v6  # "e":Ljava/lang/Exception;
    :goto_40
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_ab

    if-nez v6, :cond_31

    .line 122
    :cond_46
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 123
    nop

    .line 124
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 126
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .line 127
    .local v1, "record":Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
    invoke-virtual {v1, v5}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->ifViolatesV6PrimaryKeyIsFirstOfAnyDuplicates(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 129
    const/4 v6, 0x6

    :try_start_67
    invoke-virtual {v1, v6, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->writeToDatabase(ILandroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v6

    .line 130
    .local v6, "return_value":J
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_8f

    .line 131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Database write failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_8f} :catch_90

    .line 136
    .end local v6  # "return_value":J
    :cond_8f
    goto :goto_a7

    .line 134
    :catch_90
    move-exception v6

    .line 135
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update V6 record "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v1  # "record":Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
    .end local v6  # "e":Ljava/lang/Exception;
    :cond_a7
    :goto_a7
    goto :goto_54

    .line 139
    :cond_a8
    add-int/lit8 p2, p2, 0x1

    goto :goto_b0

    .line 122
    :catchall_ab
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    .line 141
    .end local v3  # "selectQuery":Ljava/lang/String;
    .end local v4  # "c":Landroid/database/Cursor;
    .end local v5  # "old_records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;>;"
    :cond_b0
    :goto_b0
    return-void
.end method

.method public updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z
    .registers 11
    .param p1, "soundModel"  # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 149
    monitor-enter p0

    .line 150
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 151
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "model_uuid"

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->vendorUuid:Ljava/util/UUID;

    if-eqz v2, :cond_26

    .line 154
    const-string/jumbo v2, "vendor_uuid"

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->vendorUuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_26
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

    if-eqz v2, :cond_a3

    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    array-length v2, v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a3

    .line 160
    const-string/jumbo v2, "keyphrase_id"

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
    const-string/jumbo v2, "locale"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v2, "hint_text"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_1 .. :try_end_89} :catchall_a5

    .line 168
    :try_start_89
    const-string/jumbo v2, "sound_model"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v0, v2, v5, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v5
    :try_end_92
    .catchall {:try_start_89 .. :try_end_92} :catchall_9e

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-eqz v2, :cond_99

    move v3, v4

    .line 171
    :cond_99
    :try_start_99
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    .line 168
    return v3

    .line 171
    :catchall_9e
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .end local p0  # "this":Lcom/android/server/voiceinteraction/DatabaseHelper;
    .end local p1  # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    throw v2

    .line 174
    .restart local p0  # "this":Lcom/android/server/voiceinteraction/DatabaseHelper;
    .restart local p1  # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :cond_a3
    monitor-exit p0

    return v3

    .line 175
    .end local v0  # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1  # "values":Landroid/content/ContentValues;
    :catchall_a5
    move-exception v0

    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_99 .. :try_end_a7} :catchall_a5

    throw v0
.end method
