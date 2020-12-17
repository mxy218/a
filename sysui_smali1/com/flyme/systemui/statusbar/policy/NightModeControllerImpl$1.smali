.class Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$1;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "NightModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 5

    .line 55
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    invoke-static {v0, p1}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->access$002(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;Z)Z

    .line 59
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->access$100(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;)V

    return-void
.end method
