.class Lcom/android/server/MmsServiceBroker$1;
.super Landroid/os/Handler;
.source "MmsServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MmsServiceBroker;


# direct methods
.method constructor <init>(Lcom/android/server/MmsServiceBroker;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$1;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 82
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    .line 87
    const-string p1, "MmsServiceBroker"

    const-string v0, "Unknown message"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 84
    :cond_d
    iget-object p1, p0, Lcom/android/server/MmsServiceBroker$1;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {p1}, Lcom/android/server/MmsServiceBroker;->access$000(Lcom/android/server/MmsServiceBroker;)V

    .line 85
    nop

    .line 89
    :goto_13
    return-void
.end method
