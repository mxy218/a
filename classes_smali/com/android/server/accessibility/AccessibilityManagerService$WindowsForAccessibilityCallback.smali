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

    .line 2904
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 2

    .line 2904
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->populateReportedWindowLocked(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p0

    return-object p0
.end method

.method private getTypeForWindowManagerWindowType(I)I
    .registers 7

    .line 2959
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

    .line 3006
    const/4 p1, -0x1

    return p1

    .line 2977
    :pswitch_3f  #0x7db, 0x7dc
    return v1

    .line 2998
    :cond_40
    const/4 p1, 0x5

    return p1

    .line 3002
    :cond_42
    return v3

    .line 2994
    :cond_43
    :pswitch_43  #0x7d0, 0x7d1, 0x7d3, 0x7d6, 0x7d8, 0x7d9, 0x7da
    return v2

    .line 2972
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
    .registers 7

    .line 2923
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v0

    .line 2924
    if-gez v0, :cond_c

    .line 2925
    const/4 p1, 0x0

    return-object p1

    .line 2928
    :cond_c
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    .line 2930
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setId(I)V

    .line 2931
    iget v0, p1, Landroid/view/WindowInfo;->type:I

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->getTypeForWindowManagerWindowType(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setType(I)V

    .line 2932
    iget v0, p1, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 2933
    iget-boolean v0, p1, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setFocused(Z)V

    .line 2934
    iget-object v0, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2935
    iget-object v0, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 2936
    iget-wide v2, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAnchorId(J)V

    .line 2937
    iget-boolean v0, p1, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setPictureInPicture(Z)V

    .line 2939
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-static {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v0

    .line 2940
    if-ltz v0, :cond_47

    .line 2941
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setParentId(I)V

    .line 2944
    :cond_47
    iget-object v0, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v0, :cond_6a

    .line 2945
    iget-object v0, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2946
    const/4 v2, 0x0

    :goto_52
    if-ge v2, v0, :cond_6a

    .line 2947
    iget-object v3, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 2948
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v3

    .line 2949
    if-ltz v3, :cond_67

    .line 2950
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->addChild(I)V

    .line 2946
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 2955
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

    .line 2909
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2915
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateWindowsLocked(Ljava/util/List;)V

    .line 2918
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 2919
    monitor-exit v0

    .line 2920
    return-void

    .line 2919
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw p1
.end method
