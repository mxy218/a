.class Lcom/android/server/dreams/DreamManagerService$5;
.super Landroid/database/ContentObserver;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 473
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$5;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 476
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService$5;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p1}, Lcom/android/server/dreams/DreamManagerService;->access$200(Lcom/android/server/dreams/DreamManagerService;)V

    .line 477
    return-void
.end method
