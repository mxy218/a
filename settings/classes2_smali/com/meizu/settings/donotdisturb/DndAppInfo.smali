.class public Lcom/meizu/settings/donotdisturb/DndAppInfo;
.super Lcom/meizu/settings/donotdisturb/DndBaseInfo;
.source "DndAppInfo.java"


# instance fields
.field private mEnable:Z

.field private mPkg:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/meizu/settings/donotdisturb/DndBaseInfo;-><init>(ILjava/lang/String;)V

    .line 12
    iput-object p2, p0, Lcom/meizu/settings/donotdisturb/DndAppInfo;->mPkg:Ljava/lang/String;

    .line 13
    iput p3, p0, Lcom/meizu/settings/donotdisturb/DndAppInfo;->mUid:I

    return-void
.end method


# virtual methods
.method public getPkg()Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppInfo;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()I
    .registers 1

    .line 37
    iget p0, p0, Lcom/meizu/settings/donotdisturb/DndAppInfo;->mUid:I

    return p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 29
    iget-boolean p0, p0, Lcom/meizu/settings/donotdisturb/DndAppInfo;->mEnable:Z

    return p0
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/meizu/settings/donotdisturb/DndAppInfo;->mEnable:Z

    return-void
.end method
