.class public Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;
.super Ljava/lang/Object;
.source "NotificationFilterPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterPanelTouchListener"
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mTouchSlop:I

.field private mTrackGesture:Z

.field final synthetic this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V
    .registers 2

    .line 329
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->mTouchSlop:I

    return-void
.end method

.method private isInside(FF)Z
    .registers 4

    .line 363
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->access$300(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1a

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->access$400(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isInContentBounds(F)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    return p0

    .line 364
    :cond_1a
    :goto_1a
    iput p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->mDownX:F

    .line 365
    iput p2, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->mDownY:F

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 335
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 336
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 337
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_4b

    if-eq p2, v2, :cond_3b

    const/4 v2, 0x2

    if-eq p2, v2, :cond_18

    goto :goto_56

    .line 346
    :cond_18
    iget-boolean p2, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->mTrackGesture:Z

    if-eqz p2, :cond_56

    .line 347
    iget p2, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->mDownX:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_38

    iget p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->mDownY:F

    sub-float/2addr p1, v0

    .line 348
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_56

    .line 349
    :cond_38
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->mTrackGesture:Z

    goto :goto_56

    .line 354
    :cond_3b
    iget-boolean p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->mTrackGesture:Z

    if-eqz p1, :cond_56

    .line 355
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->access$200(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object p2, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_56

    .line 339
    :cond_4b
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->mTrackGesture:Z

    .line 340
    invoke-direct {p0, p1, v0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->isInside(FF)Z

    move-result p1

    if-eqz p1, :cond_56

    .line 341
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->mTrackGesture:Z

    return v2

    .line 359
    :cond_56
    :goto_56
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;->mTrackGesture:Z

    return p0
.end method
