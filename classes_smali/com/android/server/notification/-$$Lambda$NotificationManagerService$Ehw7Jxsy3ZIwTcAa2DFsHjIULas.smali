.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$Ehw7Jxsy3ZIwTcAa2DFsHjIULas;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$Ehw7Jxsy3ZIwTcAa2DFsHjIULas;->f$0:Lcom/android/server/notification/NotificationManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$Ehw7Jxsy3ZIwTcAa2DFsHjIULas;->f$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->lambda$handleSavePolicyFile$0$NotificationManagerService()V

    return-void
.end method
