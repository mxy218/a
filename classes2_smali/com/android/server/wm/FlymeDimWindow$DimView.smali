.class Lcom/android/server/wm/FlymeDimWindow$DimView;
.super Landroid/view/View;
.source "FlymeDimWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FlymeDimWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DimView"
.end annotation


# instance fields
.field private mEdgeTouchExcludeRegion:Landroid/graphics/Region;

.field final synthetic this$0:Lcom/android/server/wm/FlymeDimWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FlymeDimWindow;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/wm/FlymeDimWindow;
    .param p2, "context"  # Landroid/content/Context;

    .line 143
    iput-object p1, p0, Lcom/android/server/wm/FlymeDimWindow$DimView;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    .line 144
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$DimView;->mEdgeTouchExcludeRegion:Landroid/graphics/Region;

    .line 145
    return-void
.end method

.method private updateEdgeTouchExcludeRegion()V
    .registers 8

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$DimView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 167
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_3f

    .line 168
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 169
    .local v1, "outDisplayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 170
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 171
    .local v2, "displayRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/FlymeDimWindow$DimView;->mEdgeTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 172
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 173
    .local v3, "includeRect":Landroid/graphics/Rect;
    const/high16 v4, 0x41200000  # 10.0f

    iget-object v5, p0, Lcom/android/server/wm/FlymeDimWindow$DimView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    .line 174
    .local v4, "inset":I
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 175
    iget-object v5, p0, Lcom/android/server/wm/FlymeDimWindow$DimView;->mEdgeTouchExcludeRegion:Landroid/graphics/Region;

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 176
    .end local v1  # "outDisplayInfo":Landroid/view/DisplayInfo;
    .end local v2  # "displayRect":Landroid/graphics/Rect;
    .end local v3  # "includeRect":Landroid/graphics/Rect;
    .end local v4  # "inset":I
    goto :goto_44

    .line 177
    :cond_3f
    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow$DimView;->mEdgeTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 179
    :goto_44
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"  # Landroid/content/res/Configuration;

    .line 183
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 184
    invoke-direct {p0}, Lcom/android/server/wm/FlymeDimWindow$DimView;->updateEdgeTouchExcludeRegion()V

    .line 185
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 149
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$DimView;->mEdgeTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 151
    invoke-direct {p0}, Lcom/android/server/wm/FlymeDimWindow$DimView;->updateEdgeTouchExcludeRegion()V

    .line 154
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$DimView;->mEdgeTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    .line 155
    return v1

    .line 157
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow$DimView;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-static {v0}, Lcom/android/server/wm/FlymeDimWindow;->access$600(Lcom/android/server/wm/FlymeDimWindow;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 158
    :try_start_29
    iget-object v2, p0, Lcom/android/server/wm/FlymeDimWindow$DimView;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-static {v2}, Lcom/android/server/wm/FlymeDimWindow;->access$600(Lcom/android/server/wm/FlymeDimWindow;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnTouchListener;

    .line 159
    .local v3, "listener":Landroid/view/View$OnTouchListener;
    invoke-interface {v3, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 160
    nop

    .end local v3  # "listener":Landroid/view/View$OnTouchListener;
    goto :goto_33

    .line 161
    :cond_44
    monitor-exit v0

    .line 162
    return v1

    .line 161
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_29 .. :try_end_48} :catchall_46

    throw v1
.end method
