.class final Lcom/meizu/freeze/FreezeInfo;
.super Ljava/lang/Object;
.source "FreezeInfo.java"


# instance fields
.field mPackageName:Ljava/lang/String;

.field mPids:[I

.field mReason:Ljava/lang/String;

.field mUid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/meizu/freeze/FreezeInfo;->mUid:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/freeze/FreezeInfo;->mPids:[I

    .line 25
    iput-object p2, p0, Lcom/meizu/freeze/FreezeInfo;->mPackageName:Ljava/lang/String;

    .line 26
    const-string v0, "FORCE_UNFREEZE_handler"

    iput-object v0, p0, Lcom/meizu/freeze/FreezeInfo;->mReason:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(I[ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "uid"  # I
    .param p2, "pids"  # [I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "reason"  # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/meizu/freeze/FreezeInfo;->mUid:I

    .line 31
    iput-object p2, p0, Lcom/meizu/freeze/FreezeInfo;->mPids:[I

    .line 32
    iput-object p3, p0, Lcom/meizu/freeze/FreezeInfo;->mPackageName:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/meizu/freeze/FreezeInfo;->mReason:Ljava/lang/String;

    .line 34
    return-void
.end method
