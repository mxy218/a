.class final Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowsForAccessibilityCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2914
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
    .param p1, "x1"  # Landroid/view/WindowInfo;

    .line 2914
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->populateReportedWindowLocked(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method private getTypeForWindowManagerWindowType(I)I
    .registers 7
    .param p1, "windowType"  # I

    .line 2969
    const/4 v0, 0x1

    if-eq p1, v0, :cond_44

    const/4 v1, 0x2

    if-eq p1, v1, :cond_44

    const/4 v2, 0x3

    if-eq p1, v2, :cond_44

    const/4 v3, 0x4

    if-eq p1, v3, :cond_44

    const/16 v4, 0x3ed

    if-eq p1, v4, :cond_44

    const/16 v4, 0x7de

    if-eq p1, v4, :cond_43

    const/16 v4, 0x7e1

    if-eq p1, v4, :cond_43

    const/16 v4, 0x7e8

    if-eq p1, v4, :cond_43

    const/16 v4, 0x7f0

    if-eq p1, v4, :cond_42

    const/16 v3, 0x7f2

    if-eq p1, v3, :cond_40

    const/16 v3, 0x7f4

    if-eq p1, v3, :cond_43

    const/16 v3, 0x7f6

    if-eq p1, v3, :cond_43

    const/16 v3, 0x7e3

    if-eq p1, v3, :cond_43

    const/16 v3, 0x7e4

    if-eq p1, v3, :cond_43

    packed-switch p1, :pswitch_data_46

    packed-switch p1, :pswitch_data_52

    packed-switch p1, :pswitch_data_5e

    .line 3016
    const/4 v0, -0x1

    return v0

    .line 2987
    :pswitch_3f  #0x7db, 0x7dc
    return v1

    .line 3008
    :cond_40
    const/4 v0, 0x5

    return v0

    .line 3012
    :cond_42
    return v3

    .line 3004
    :cond_43
    :pswitch_43  #0x7d0, 0x7d1, 0x7d3, 0x7d6, 0x7d8, 0x7d9, 0x7da
    return v2

    .line 2982
    :cond_44
    :pswitch_44  #0x3e8, 0x3e9, 0x3ea, 0x3eb, 0x7d2, 0x7d5, 0x7d7
    return v0

    nop

    :pswitch_data_46
    .packed-switch 0x3e8
        :pswitch_44  #000003e8
        :pswitch_44  #000003e9
        :pswitch_44  #000003ea
        :pswitch_44  #000003eb
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0x7d0
        :pswitch_43  #000007d0
        :pswitch_43  #000007d1
        :pswitch_44  #000007d2
        :pswitch_43  #000007d3
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x7d5
        :pswitch_44  #000007d5
        :pswitch_43  #000007d6
        :pswitch_44  #000007d7
        :pswitch_43  #000007d8
        :pswitch_43  #000007d9
        :pswitch_43  #000007da
        :pswitch_3f  #000007db
        :pswitch_3f  #000007dc
    .end packed-switch
.end method

.method private populateReportedWindowLocked(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 9
    .param p1, "window"  # Landroid/view/WindowInfo;

    .line 2933
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v0

    .line 2934
    .local v0, "windowId":I
    if-gez v0, :cond_c

    .line 2935
    const/4 v1, 0x0

    return-object v1

    .line 2938
    :cond_c
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    .line 2940
    .local v1, "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setId(I)V

    .line 2941
    iget v2, p1, Landroid/view/WindowInfo;->type:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->getTypeForWindowManagerWindowType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setType(I)V

    .line 2942
    iget v2, p1, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 2943
    iget-boolean v2, p1, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setFocused(Z)V

    .line 2944
    iget-object v2, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2945
    iget-object v2, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 2946
    iget-wide v2, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAnchorId(J)V

    .line 2947
    iget-boolean v2, p1, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setPictureInPicture(Z)V

    .line 2949
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v3, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-static {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v2

    .line 2950
    .local v2, "parentId":I
    if-ltz v2, :cond_47

    .line 2951
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setParentId(I)V

    .line 2954
    :cond_47
    iget-object v3, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v3, :cond_6a

    .line 2955
    iget-object v3, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 2956
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_52
    if-ge v4, v3, :cond_6a

    .line 2957
    iget-object v5, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 2958
    .local v5, "childToken":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v6

    .line 2959
    .local v6, "childId":I
    if-ltz v6, :cond_67

    .line 2960
    invoke-virtual {v1, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->addChild(I)V

    .line 2956
    .end local v5  # "childToken":Landroid/os/IBinder;
    .end local v6  # "childId":I
    :cond_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 2965
    .end local v3  # "childCount":I
    .end local v4  # "i":I
    :cond_6a
    return-object v1
.end method


# virtual methods
.method public onWindowsForAccessibilityChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 2919
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2925
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateWindowsLocked(Ljava/util/List;)V

    .line 2928
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2929
    monitor-exit v0

    .line 2930
    return-void

    .line 2929
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method
