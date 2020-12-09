.class final Lcom/android/server/notification/NotificationRecord$Light;
.super Ljava/lang/Object;
.source "NotificationRecord.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Light"
.end annotation


# instance fields
.field public final color:I

.field public final offMs:I

.field public final onMs:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 1310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1311
    iput p1, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    .line 1312
    iput p2, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    .line 1313
    iput p3, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    .line 1314
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1318
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1319
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 1321
    :cond_12
    check-cast p1, Lcom/android/server/notification/NotificationRecord$Light;

    .line 1323
    iget v2, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    iget v3, p1, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    if-eq v2, v3, :cond_1b

    return v1

    .line 1324
    :cond_1b
    iget v2, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    iget v3, p1, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    if-eq v2, v3, :cond_22

    return v1

    .line 1325
    :cond_22
    iget v2, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    iget p1, p1, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    if-ne v2, p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    .line 1319
    :cond_2b
    :goto_2b
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1331
    iget v0, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    .line 1332
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    add-int/2addr v0, v1

    .line 1333
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    add-int/2addr v0, v1

    .line 1334
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Light{color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", onMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
