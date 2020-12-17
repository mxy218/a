.class Lcom/android/systemui/statusbar/phone/StatusBar$30;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2

    .line 5982
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$30;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public statusBarHeightChanged(Z)V
    .registers 2

    .line 5985
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$30;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->setOnConfigurationChanged(Z)V

    return-void
.end method
