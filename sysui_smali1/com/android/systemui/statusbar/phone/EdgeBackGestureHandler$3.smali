.class Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$3;
.super Ljava/lang/Object;
.source "EdgeBackGestureHandler.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V
    .registers 2

    .line 338
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$3;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSampledRegion(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2

    .line 346
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$3;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$500(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public onRegionDarknessChanged(Z)V
    .registers 3

    .line 341
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$3;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$400(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    move-result-object p0

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->setIsDark(ZZ)V

    return-void
.end method