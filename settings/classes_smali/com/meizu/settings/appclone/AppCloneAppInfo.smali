.class public Lcom/meizu/settings/appclone/AppCloneAppInfo;
.super Lcom/meizu/settings/appclone/AppCloneBaseInfo;
.source "AppCloneAppInfo.java"


# instance fields
.field private mCloneEnable:Z

.field private mPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/meizu/settings/appclone/AppCloneBaseInfo;-><init>(ILjava/lang/String;)V

    .line 11
    iput-object p2, p0, Lcom/meizu/settings/appclone/AppCloneAppInfo;->mPkg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPkg()Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneAppInfo;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public isCloneEnabled()Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/meizu/settings/appclone/AppCloneAppInfo;->mCloneEnable:Z

    return p0
.end method

.method public setCloneEnabled(Z)V
    .registers 2

    .line 23
    iput-boolean p1, p0, Lcom/meizu/settings/appclone/AppCloneAppInfo;->mCloneEnable:Z

    return-void
.end method
