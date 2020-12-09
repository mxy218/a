.class Lcom/android/server/rollback/LocalIntentReceiver$1;
.super Landroid/content/IIntentSender$Stub;
.source "LocalIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/rollback/LocalIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/rollback/LocalIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/rollback/LocalIntentReceiver;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/android/server/rollback/LocalIntentReceiver$1;->this$0:Lcom/android/server/rollback/LocalIntentReceiver;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 40
    iget-object p1, p0, Lcom/android/server/rollback/LocalIntentReceiver$1;->this$0:Lcom/android/server/rollback/LocalIntentReceiver;

    iget-object p1, p1, Lcom/android/server/rollback/LocalIntentReceiver;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 41
    return-void
.end method
