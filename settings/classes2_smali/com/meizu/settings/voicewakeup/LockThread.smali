.class public Lcom/meizu/settings/voicewakeup/LockThread;
.super Ljava/lang/Thread;
.source "LockThread.java"


# instance fields
.field private mPauseLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 19
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/LockThread;->mPauseLock:Ljava/lang/Object;

    return-void
.end method
