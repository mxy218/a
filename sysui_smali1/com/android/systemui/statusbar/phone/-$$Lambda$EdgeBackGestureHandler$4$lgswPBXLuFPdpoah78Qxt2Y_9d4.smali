.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$4$lgswPBXLuFPdpoah78Qxt2Y_9d4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;

.field private final synthetic f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;Landroid/view/MotionEvent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$4$lgswPBXLuFPdpoah78Qxt2Y_9d4;->f$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$4$lgswPBXLuFPdpoah78Qxt2Y_9d4;->f$1:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$4$lgswPBXLuFPdpoah78Qxt2Y_9d4;->f$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$4$lgswPBXLuFPdpoah78Qxt2Y_9d4;->f$1:Landroid/view/MotionEvent;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;->lambda$updateGestureEvent$0$EdgeBackGestureHandler$4(Landroid/view/MotionEvent;)V

    return-void
.end method