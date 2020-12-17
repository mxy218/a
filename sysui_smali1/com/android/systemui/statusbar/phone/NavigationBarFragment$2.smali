.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;
.super Landroid/database/ContentObserver;
.source "NavigationBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/os/Handler;)V
    .registers 3

    .line 237
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 240
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    const/4 p2, -0x2

    .line 241
    invoke-virtual {p1, p2}, Lcom/android/systemui/assist/AssistManager;->getAssistInfoForUser(I)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 242
    :goto_e
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z

    move-result p2

    if-eq p2, p1, :cond_20

    .line 243
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)V

    .line 244
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$102(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)Z

    :cond_20
    return-void
.end method
