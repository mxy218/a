.class Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundModelRecord"
.end annotation


# instance fields
.field public final data:[B

.field public final hintText:Ljava/lang/String;

.field public final keyphraseId:I

.field public final locale:Ljava/lang/String;

.field public final modelUuid:Ljava/lang/String;

.field public final recognitionModes:I

.field public final type:I

.field public final users:Ljava/lang/String;

.field public final vendorUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/database/Cursor;)V
    .registers 4

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const-string v0, "model_uuid"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    .line 341
    const/4 v0, 0x5

    if-lt p1, v0, :cond_20

    .line 342
    const-string/jumbo p1, "vendor_uuid"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->vendorUuid:Ljava/lang/String;

    goto :goto_23

    .line 344
    :cond_20
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->vendorUuid:Ljava/lang/String;

    .line 346
    :goto_23
    const-string p1, "keyphrase_id"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    .line 347
    const-string/jumbo p1, "type"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->type:I

    .line 348
    const-string p1, "data"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    .line 349
    const-string/jumbo p1, "recognition_modes"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->recognitionModes:I

    .line 350
    const-string p1, "locale"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    .line 351
    const-string p1, "hint_text"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->hintText:Ljava/lang/String;

    .line 352
    const-string/jumbo p1, "users"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    .line 353
    return-void
.end method

.method private V6PrimaryKeyMatches(Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;)Z
    .registers 4

    .line 356
    iget v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    iget v1, p1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->stringComparisonHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    .line 357
    invoke-static {v0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->stringComparisonHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    .line 356
    :goto_1d
    return p1
.end method

.method private static stringComparisonHelper(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 410
    if-eqz p0, :cond_7

    .line 411
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 413
    :cond_7
    if-ne p0, p1, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method


# virtual methods
.method public ifViolatesV6PrimaryKeyIsFirstOfAnyDuplicates(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;",
            ">;)Z"
        }
    .end annotation

    .line 370
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .line 371
    if-ne p0, v1, :cond_14

    .line 372
    goto :goto_4

    .line 376
    :cond_14
    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->V6PrimaryKeyMatches(Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    iget-object v1, v1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_25

    .line 377
    return v2

    .line 379
    :cond_25
    goto :goto_4

    .line 382
    :cond_26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .line 383
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->V6PrimaryKeyMatches(Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 384
    if-ne p0, v0, :cond_40

    goto :goto_41

    :cond_40
    move v1, v2

    :goto_41
    return v1

    .line 386
    :cond_42
    goto :goto_2a

    .line 387
    :cond_43
    return v1
.end method

.method public writeToDatabase(ILandroid/database/sqlite/SQLiteDatabase;)J
    .registers 6

    .line 391
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 392
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    const-string v2, "model_uuid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/4 v1, 0x5

    if-lt p1, v1, :cond_17

    .line 394
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->vendorUuid:Ljava/lang/String;

    const-string/jumbo v2, "vendor_uuid"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_17
    iget p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "keyphrase_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    iget p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->type:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 398
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    const-string v2, "data"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 399
    iget p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->recognitionModes:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v2, "recognition_modes"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    const-string v2, "locale"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->hintText:Ljava/lang/String;

    const-string v2, "hint_text"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    const-string/jumbo v2, "users"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/4 p1, 0x0

    const-string/jumbo v2, "sound_model"

    invoke-virtual {p2, v2, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    return-wide p1
.end method
