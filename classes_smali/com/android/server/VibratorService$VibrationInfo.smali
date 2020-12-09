.class Lcom/android/server/VibratorService$VibrationInfo;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VibrationInfo"
.end annotation


# instance fields
.field private final mAttrs:Landroid/media/AudioAttributes;

.field private final mEffect:Landroid/os/VibrationEffect;

.field private final mOpPkg:Ljava/lang/String;

.field private final mOriginalEffect:Landroid/os/VibrationEffect;

.field private final mReason:Ljava/lang/String;

.field private final mStartTimeDebug:J

.field private final mUid:I


# direct methods
.method public constructor <init>(JLandroid/os/VibrationEffect;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-wide p1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mStartTimeDebug:J

    .line 294
    iput-object p3, p0, Lcom/android/server/VibratorService$VibrationInfo;->mEffect:Landroid/os/VibrationEffect;

    .line 295
    iput-object p4, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOriginalEffect:Landroid/os/VibrationEffect;

    .line 296
    iput-object p5, p0, Lcom/android/server/VibratorService$VibrationInfo;->mAttrs:Landroid/media/AudioAttributes;

    .line 297
    iput p6, p0, Lcom/android/server/VibratorService$VibrationInfo;->mUid:I

    .line 298
    iput-object p7, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOpPkg:Ljava/lang/String;

    .line 299
    iput-object p8, p0, Lcom/android/server/VibratorService$VibrationInfo;->mReason:Ljava/lang/String;

    .line 300
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    const-string/jumbo v1, "startTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-static {}, Landroid/icu/text/DateFormat;->getDateTimeInstance()Landroid/icu/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/VibratorService$VibrationInfo;->mStartTimeDebug:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v1, ", effect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mEffect:Landroid/os/VibrationEffect;

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    const-string v1, ", originalEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOriginalEffect:Landroid/os/VibrationEffect;

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, ", attrs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mAttrs:Landroid/media/AudioAttributes;

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mUid:I

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    const-string v1, ", opPkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOpPkg:Ljava/lang/String;

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mReason:Ljava/lang/String;

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    return-object v0
.end method
