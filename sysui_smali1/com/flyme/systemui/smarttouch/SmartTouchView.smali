.class public Lcom/flyme/systemui/smarttouch/SmartTouchView;
.super Landroid/widget/ImageView;
.source "SmartTouchView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;,
        Lcom/flyme/systemui/smarttouch/SmartTouchView$State;
    }
.end annotation


# instance fields
.field private final ClickToDragList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ClickToNormalList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final DragToClickList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final DragToNormalList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final NormalToClickList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final NormalToDragList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastRotation:F

.field private nowList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nowPictureId:I

.field private nowState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

.field private toState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    .line 34
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    .line 35
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    .line 36
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    .line 37
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    .line 38
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    .line 42
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click_0:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click_1:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click_2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click_3:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click_4:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click_5:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click_6:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click_0:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click_1:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click_2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click_3:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click_4:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click_5:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click_6:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_0:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_1:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_3:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_4:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_5:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_6:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_0:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_1:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_3:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_4:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_5:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_6:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click2_0:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click2_1:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click2_2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click2_3:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click2_4:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click2_5:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click2_6:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click2_7:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click2_8:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_click2_9:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_6:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_5:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_4:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_3:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_1:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag_0:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag2_0:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag2_1:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag2_2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag2_3:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag2_4:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag2_5:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag2_6:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag2_7:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    sget p2, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag2_8:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    sget p1, Lcom/android/systemui/R$drawable;->smart_touch_animation_drag2_9:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$002(Lcom/flyme/systemui/smarttouch/SmartTouchView;Lcom/flyme/systemui/smarttouch/SmartTouchView$State;)Lcom/flyme/systemui/smarttouch/SmartTouchView$State;
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    return-object p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/smarttouch/SmartTouchView;)Lcom/flyme/systemui/smarttouch/SmartTouchView$State;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->toState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/smarttouch/SmartTouchView;)Ljava/util/LinkedList;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/flyme/systemui/smarttouch/SmartTouchView;I)I
    .registers 2

    .line 17
    iput p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowPictureId:I

    return p1
.end method


# virtual methods
.method bindAnimation()V
    .registers 7

    .line 155
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->toState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    sget-object v1, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->NORMAL:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    if-ne v0, v1, :cond_2e

    .line 156
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    sget-object v1, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->CLICK:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    if-ne v0, v1, :cond_1d

    .line 157
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    iget v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowPictureId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 158
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    goto :goto_81

    .line 160
    :cond_1d
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    iget v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowPictureId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    goto :goto_81

    .line 163
    :cond_2e
    sget-object v1, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->CLICK:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    if-ne v0, v1, :cond_5a

    .line 164
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    sget-object v1, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->DRAG:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    if-ne v0, v1, :cond_49

    .line 165
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    iget v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowPictureId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    goto :goto_81

    .line 168
    :cond_49
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    iget v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowPictureId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    goto :goto_81

    .line 172
    :cond_5a
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    sget-object v1, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->NORMAL:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    if-ne v0, v1, :cond_71

    .line 173
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    iget v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowPictureId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    goto :goto_81

    .line 176
    :cond_71
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    iget v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowPictureId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    :goto_81
    const/4 v1, 0x0

    .line 181
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_8f

    return-void

    .line 187
    :cond_8f
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 188
    new-instance v3, Lcom/flyme/systemui/smarttouch/SmartTouchView$1;

    invoke-direct {v3, p0}, Lcom/flyme/systemui/smarttouch/SmartTouchView$1;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouchView;)V

    :goto_9c
    if-ge v0, v1, :cond_b6

    .line 196
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9c

    :cond_b6
    const/4 v0, 0x1

    .line 198
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 199
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public refreshResource()V
    .registers 3

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 146
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_33

    .line 148
    :cond_24
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_33
    return-void
.end method

.method public declared-synchronized updateState(Lcom/flyme/systemui/smarttouch/SmartTouchView$State;F)V
    .registers 8

    monitor-enter p0

    .line 111
    :try_start_1
    new-instance v0, Ljava/math/BigDecimal;

    iget v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->lastRotation:F

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 112
    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, p2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 114
    sget-object v2, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->DRAG:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    if-ne p1, v2, :cond_5b

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-eqz v0, :cond_5b

    .line 115
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRotation()F

    move-result v0

    const/4 v1, 0x0

    .line 117
    :cond_1e
    :goto_1e
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43340000  # 180.0f

    cmpl-float v2, v2, v3

    const/high16 v4, 0x43b40000  # 360.0f

    if-lez v2, :cond_36

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_31

    sub-float/2addr v0, v4

    goto :goto_32

    :cond_31
    add-float/2addr v0, v4

    :goto_32
    if-nez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1e

    .line 125
    :cond_36
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setRotation(F)V

    sub-float v0, p2, v0

    cmpl-float v1, v0, v3

    if-lez v1, :cond_41

    sub-float/2addr v0, v4

    goto :goto_48

    :cond_41
    const/high16 v1, -0x3ccc0000  # -180.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_48

    add-float/2addr v0, v4

    .line 133
    :cond_48
    :goto_48
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 134
    iput p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->lastRotation:F

    .line 136
    :cond_5b
    sget-object p2, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->NORMAL:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    if-eq p1, p2, :cond_69

    iget-object p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->toState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    if-eq p1, p2, :cond_67

    iget-object p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_70

    if-ne p1, p2, :cond_69

    .line 137
    :cond_67
    monitor-exit p0

    return-void

    .line 139
    :cond_69
    :try_start_69
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->toState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    .line 140
    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->bindAnimation()V
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_70

    .line 141
    monitor-exit p0

    return-void

    :catchall_70
    move-exception p1

    monitor-exit p0

    throw p1
.end method
