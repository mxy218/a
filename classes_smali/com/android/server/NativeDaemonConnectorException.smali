.class public Lcom/android/server/NativeDaemonConnectorException;
.super Ljava/lang/Exception;
.source "NativeDaemonConnectorException.java"


# instance fields
.field private mCmd:Ljava/lang/String;

.field private mEvent:Lcom/android/server/NativeDaemonEvent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V
    .registers 5

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "command \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' failed with \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnectorException;->mCmd:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/android/server/NativeDaemonConnectorException;->mEvent:Lcom/android/server/NativeDaemonEvent;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnectorException;->mCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnectorException;->mEvent:Lcom/android/server/NativeDaemonEvent;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method public rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;
    .registers 3

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/android/server/NativeDaemonConnectorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
