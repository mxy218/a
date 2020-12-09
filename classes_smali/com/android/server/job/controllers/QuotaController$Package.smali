.class final Lcom/android/server/job/controllers/QuotaController$Package;
.super Ljava/lang/Object;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Package"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    .line 214
    iput-object p2, p0, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    .line 215
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 233
    instance-of v0, p1, Lcom/android/server/job/controllers/QuotaController$Package;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 234
    check-cast p1, Lcom/android/server/job/controllers/QuotaController$Package;

    .line 235
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget v2, p1, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    if-ne v0, v2, :cond_18

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1

    .line 237
    :cond_19
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 219
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 223
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 225
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 226
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 228
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 229
    return-void
.end method
