.class Lcom/android/systemui/ScreenDecorations$4;
.super Landroid/content/BroadcastReceiver;
.source "ScreenDecorations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .registers 2

    .line 451
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$4;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 454
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 455
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 457
    :cond_d
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    const-string v0, "android.intent.extra.user_handle"

    .line 456
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 459
    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations$4;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p2}, Lcom/android/systemui/ScreenDecorations;->access$700(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    .line 460
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$4;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->access$700(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/ScreenDecorations;->access$600(Lcom/android/systemui/ScreenDecorations;I)V

    const/4 p0, 0x0

    throw p0
.end method
