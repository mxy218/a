.class Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "ManagedProfileControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 141
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->access$000(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)V

    .line 142
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->access$100(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .line 143
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;->onManagedProfileChanged()V

    goto :goto_f

    :cond_1f
    return-void
.end method