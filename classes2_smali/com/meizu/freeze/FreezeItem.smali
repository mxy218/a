.class public Lcom/meizu/freeze/FreezeItem;
.super Ljava/lang/Object;
.source "FreezeItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FreezeItem"


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mPids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mReason:Ljava/lang/String;

.field public mUid:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/freeze/FreezeItem;->mPids:Ljava/util/ArrayList;

    .line 30
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/freeze/FreezeItem;->mUid:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/freeze/FreezeItem;->mPackageName:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/meizu/freeze/FreezeItem;->mReason:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/meizu/freeze/FreezeItem;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 37
    iput-object v0, p0, Lcom/meizu/freeze/FreezeItem;->mPids:Ljava/util/ArrayList;

    .line 38
    return-void
.end method

.method public reinitItem(I[ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "uid"  # I
    .param p2, "pids"  # [I
    .param p3, "pkg"  # Ljava/lang/String;
    .param p4, "reason"  # Ljava/lang/String;

    .line 41
    iput p1, p0, Lcom/meizu/freeze/FreezeItem;->mUid:I

    .line 43
    iget-object v0, p0, Lcom/meizu/freeze/FreezeItem;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v1, p2

    if-ge v0, v1, :cond_25

    .line 45
    aget v1, p2, v0

    if-gez v1, :cond_17

    .line 46
    const-string v1, "FreezeItem"

    const-string v2, "Invalid pid!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void

    .line 49
    :cond_17
    iget-object v1, p0, Lcom/meizu/freeze/FreezeItem;->mPids:Ljava/util/ArrayList;

    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 51
    .end local v0  # "i":I
    :cond_25
    iput-object p3, p0, Lcom/meizu/freeze/FreezeItem;->mPackageName:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/meizu/freeze/FreezeItem;->mReason:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FreezeItem{mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/freeze/FreezeItem;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/freeze/FreezeItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mReason=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/freeze/FreezeItem;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mPids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/freeze/FreezeItem;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
