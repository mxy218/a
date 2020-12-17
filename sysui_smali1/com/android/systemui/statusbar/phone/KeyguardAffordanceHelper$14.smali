.class Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$14;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V
    .registers 2

    .line 923
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$14;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 926
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$14;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$1202(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Z)Z

    .line 927
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$14;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$1302(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Z)Z

    .line 928
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$14;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$1002(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Z)Z

    .line 929
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$14;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$14;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$200(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$14;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$1500(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v4

    if-ne v3, v4, :cond_27

    move v3, v1

    goto :goto_28

    :cond_27
    move v3, v2

    :goto_28
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$14;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$200(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Landroid/view/View;

    move-result-object v4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$14;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object p0

    if-ne v4, p0, :cond_37

    goto :goto_38

    :cond_37
    move v1, v2

    :goto_38
    invoke-interface {v0, v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onIconClicked(ZZ)V

    return-void
.end method
