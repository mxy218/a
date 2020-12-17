.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$37;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lkeyguard/util/BottomAreaViewBackgroudUtil$SetBackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .registers 2

    .line 5375
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$37;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBackground()V
    .registers 2

    .line 5378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$37;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$37;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lkeyguard/util/BottomAreaViewBackgroudUtil;->getInstance(Landroid/content/Context;)Lkeyguard/util/BottomAreaViewBackgroudUtil;

    move-result-object p0

    invoke-virtual {p0}, Lkeyguard/util/BottomAreaViewBackgroudUtil;->getCameraDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
