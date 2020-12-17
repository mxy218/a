.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;
.super Landroid/database/ContentObserver;
.source "NavigationBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnificationContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/os/Handler;)V
    .registers 3

    .line 1123
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 1124
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 1129
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$500(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$600(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method
