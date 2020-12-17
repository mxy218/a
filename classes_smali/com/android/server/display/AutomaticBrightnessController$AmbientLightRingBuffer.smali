.class final Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AmbientLightRingBuffer"
.end annotation


# static fields
.field private static final BUFFER_SLACK:F = 1.5f


# instance fields
.field private mCapacity:I

.field private mCount:I

.field private mEnd:I

.field private mRingLux:[F

.field private mRingTime:[J

.field private mStart:I


# direct methods
.method public constructor <init>(JI)V
    .registers 6
    .param p1, "lightSensorRate"  # J
    .param p3, "ambientLightHorizon"  # I

    .line 1222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    int-to-float v0, p3

    const/high16 v1, 0x3fc00000  # 1.5f

    mul-float/2addr v0, v1

    long-to-float v1, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 1224
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 1225
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 1226
    return-void
.end method

.method private offsetOf(I)I
    .registers 3
    .param p1, "index"  # I

    .line 1324
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-ge p1, v0, :cond_f

    if-ltz p1, :cond_f

    .line 1327
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    add-int/2addr p1, v0

    .line 1328
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-lt p1, v0, :cond_e

    .line 1329
    sub-int/2addr p1, v0

    .line 1331
    :cond_e
    return p1

    .line 1325
    :cond_f
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1300
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 1301
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 1302
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 1303
    return-void
.end method

.method public getLux(I)F
    .registers 4
    .param p1, "index"  # I

    .line 1229
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->offsetOf(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getTime(I)J
    .registers 4
    .param p1, "index"  # I

    .line 1233
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->offsetOf(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public prune(J)V
    .registers 7
    .param p1, "horizon"  # J

    .line 1267
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-nez v0, :cond_5

    .line 1268
    return-void

    .line 1271
    :cond_5
    :goto_5
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_23

    .line 1272
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    add-int/2addr v0, v1

    .line 1273
    .local v0, "next":I
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-lt v0, v2, :cond_12

    .line 1274
    sub-int/2addr v0, v2

    .line 1276
    :cond_12
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_1b

    .line 1284
    goto :goto_23

    .line 1286
    :cond_1b
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 1287
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 1288
    .end local v0  # "next":I
    goto :goto_5

    .line 1290
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    aget-wide v2, v0, v1

    cmp-long v2, v2, p1

    if-gez v2, :cond_2f

    .line 1291
    aput-wide p1, v0, v1

    .line 1293
    :cond_2f
    return-void
.end method

.method public push(JF)V
    .registers 12
    .param p1, "time"  # J
    .param p3, "lux"  # F

    .line 1237
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 1238
    .local v0, "next":I
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_38

    .line 1239
    mul-int/lit8 v1, v2, 0x2

    .line 1241
    .local v1, "newSize":I
    new-array v4, v1, [F

    .line 1242
    .local v4, "newRingLux":[F
    new-array v5, v1, [J

    .line 1243
    .local v5, "newRingTime":[J
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    sub-int/2addr v2, v6

    .line 1244
    .local v2, "length":I
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    invoke-static {v7, v6, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1245
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v6, v7, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1246
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    if-eqz v6, :cond_2e

    .line 1247
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    invoke-static {v7, v3, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1248
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v6, v3, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1250
    :cond_2e
    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 1251
    iput-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 1253
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 1254
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 1255
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 1257
    .end local v1  # "newSize":I
    .end local v2  # "length":I
    .end local v4  # "newRingLux":[F
    .end local v5  # "newRingTime":[J
    :cond_38
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    aput-wide p1, v1, v0

    .line 1258
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    aput p3, v1, v0

    .line 1259
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 1260
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-ne v1, v2, :cond_4c

    .line 1261
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 1263
    :cond_4c
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 1264
    return-void
.end method

.method public size()I
    .registers 2

    .line 1296
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 1307
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1308
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1309
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-ge v1, v2, :cond_43

    .line 1310
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v2, :cond_1a

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    goto :goto_1e

    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1311
    .local v2, "next":J
    :goto_1e
    if-eqz v1, :cond_25

    .line 1312
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1314
    :cond_25
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 1315
    const-string v4, " / "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1316
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1317
    const-string/jumbo v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1309
    .end local v2  # "next":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1319
    .end local v1  # "i":I
    :cond_43
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1320
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
