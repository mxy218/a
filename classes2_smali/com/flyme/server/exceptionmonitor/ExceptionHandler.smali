.class public abstract Lcom/flyme/server/exceptionmonitor/ExceptionHandler;
.super Landroid/os/Binder;
.source "ExceptionHandler.java"


# instance fields
.field protected mMonitorService:Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;


# direct methods
.method public constructor <init>(Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;)V
    .registers 2
    .param p1, "service"  # Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;

    .line 12
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/flyme/server/exceptionmonitor/ExceptionHandler;->mMonitorService:Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;

    .line 14
    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getConfigValue(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getExceptionInfo(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract handlerEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method public abstract isEnable()Z
.end method

.method public abstract setConfigValue(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract setEnable(Z)V
.end method

.method public abstract systemReady()V
.end method
