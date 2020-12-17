.class final Lcom/android/server/uri/UriGrantsManagerService$H;
.super Landroid/os/Handler;
.source "UriGrantsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/uri/UriGrantsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field static final PERSIST_URI_GRANTS_MSG:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/uri/UriGrantsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriGrantsManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"  # Lcom/android/server/uri/UriGrantsManagerService;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 1289
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService$H;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 1290
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1291
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 1295
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_b

    .line 1297
    :cond_6
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$H;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$200(Lcom/android/server/uri/UriGrantsManagerService;)V

    .line 1301
    :goto_b
    return-void
.end method
