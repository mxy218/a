.class public Lcom/android/systemui/statusbar/notification/row/NotificationContentView;
.super Landroid/widget/FrameLayout;
.source "NotificationContentView.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAnimate:Z

.field private mAnimationStartVisibleType:I

.field private mBeforeN:Z

.field private mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mClipBottomAmount:I

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClipToActualHeight:Z

.field private mClipTopAmount:I

.field private mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mContentHeight:I

.field private mContentHeightAtAnimationStart:I

.field private mContractedChild:Landroid/view/View;

.field private mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field private mCurrentSmartRepliesAndActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

.field private mCustomPaddingBottom:I

.field private mCustomPaddingLeft:I

.field private mCustomPaddingRight:I

.field private mCustomPaddingTop:I

.field private final mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpandable:Z

.field private mExpandedChild:Landroid/view/View;

.field private mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

.field private mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field private mExpandedVisibleListener:Ljava/lang/Runnable;

.field private mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field private mFocusOnVisibilityChange:Z

.field private mForceSelectNextLayout:Z

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpChild:Landroid/view/View;

.field private mHeadsUpHeight:I

.field private mHeadsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

.field private mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field private mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field private mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

.field private mIconsVisible:Z

.field private mIsChildInGroup:Z

.field private mIsContentExpandable:Z

.field private mIsHeadsUp:Z

.field private mIsLowPriority:Z

.field private mLegacy:Z

.field private mMediaTransferManager:Lcom/android/systemui/statusbar/MediaTransferManager;

.field private mMinContractedHeight:I

.field private mNotificationContentMarginEnd:I

.field private mNotificationMaxHeight:I

.field private final mOnContentViewInactiveListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

.field private mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

.field private mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field private mRemoteInputVisible:Z

.field private mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

.field private mSingleLineWidthIndention:I

.field private mSmallHeight:I

.field private mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

.field private mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

.field private mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

.field private mTransformationStartVisibleType:I

.field private mUnrestrictedContentHeight:I

.field private mUserExpanding:Z

.field private mVisibleType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "NotificationContentView"

    const/4 v1, 0x3

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 166
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 103
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 118
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    .line 120
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipToActualHeight:Z

    const/4 p2, -0x1

    .line 145
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    .line 148
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    .line 154
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 167
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    .line 168
    new-instance p1, Lcom/android/systemui/statusbar/MediaTransferManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/MediaTransferManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMediaTransferManager:Lcom/android/systemui/statusbar/MediaTransferManager;

    .line 169
    const-class p1, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 170
    const-class p1, Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/SmartReplyController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->initView()V

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->initCustomChildPaddingSize()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Z)Z
    .registers 2

    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)I
    .registers 1

    .line 67
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;I)Lcom/android/systemui/statusbar/TransformableView;
    .registers 2

    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;I)I
    .registers 2

    .line 67
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    return p1
.end method

.method private animateToVisibleType(I)V
    .registers 5

    .line 920
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    .line 921
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    if-eq v0, v1, :cond_2a

    if-nez v1, :cond_f

    goto :goto_2a

    .line 926
    :cond_f
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    iput v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    .line 927
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    .line 928
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 929
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$2;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-interface {v1, v0, p1}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    .line 938
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    return-void

    :cond_2a
    :goto_2a
    const/4 p0, 0x1

    .line 923
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    return-void
.end method

.method private applyMediaTransfer(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 4

    .line 1151
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 1152
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isMediaNotification()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1e

    :cond_b
    const v1, 0x1020328

    .line 1156
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1158
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-nez v1, :cond_17

    return-void

    .line 1162
    :cond_17
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMediaTransferManager:Lcom/android/systemui/statusbar/MediaTransferManager;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/MediaTransferManager;->applyMediaTransferView(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .registers 9

    const v0, 0x1020197

    .line 1233
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1235
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_83

    .line 1236
    sget-object v1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    .line 1237
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz p1, :cond_18

    .line 1240
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    :cond_18
    if-nez p1, :cond_40

    if-eqz p3, :cond_40

    .line 1244
    check-cast v0, Landroid/widget/FrameLayout;

    if-nez p5, :cond_36

    .line 1246
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-static {p1, v0, p2, p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/RemoteInputController;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object p5

    const/4 p1, 0x4

    .line 1249
    invoke-virtual {p5, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1250
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_41

    .line 1256
    :cond_36
    invoke-virtual {v0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1257
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1258
    invoke-virtual {p5}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto :goto_41

    :cond_40
    move-object p5, p1

    :goto_41
    if-eqz p3, :cond_82

    const p1, 0xffffff

    .line 1274
    invoke-virtual {p5, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1277
    invoke-virtual {p5, p6}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setWrapper(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)V

    .line 1278
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$GC_EXjlJWjwU2u0y95DlTq2QVf0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$GC_EXjlJWjwU2u0y95DlTq2QVf0;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    invoke-virtual {p5, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V

    if-nez p4, :cond_5c

    .line 1280
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result p0

    if-eqz p0, :cond_82

    .line 1283
    :cond_5c
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz p4, :cond_69

    .line 1285
    invoke-virtual {p5, p4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 1287
    :cond_69
    invoke-virtual {p5, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updatePendingIntentFromActions([Landroid/app/Notification$Action;)Z

    move-result p0

    if-eqz p0, :cond_79

    .line 1288
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result p0

    if-nez p0, :cond_82

    .line 1289
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focus()V

    goto :goto_82

    .line 1292
    :cond_79
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result p0

    if-eqz p0, :cond_82

    .line 1293
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    :cond_82
    :goto_82
    return-object p5

    :cond_83
    const/4 p0, 0x0

    return-object p0
.end method

.method private applyRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 11

    .line 1199
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v7, 0x0

    if-eqz v1, :cond_15

    .line 1201
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    goto :goto_17

    .line 1205
    :cond_15
    iput-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1207
    :goto_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eq v0, v1, :cond_22

    .line 1210
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1212
    :cond_22
    iput-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1214
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_38

    .line 1216
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    goto :goto_3a

    .line 1220
    :cond_38
    iput-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1222
    :goto_3a
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_45

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eq v0, v1, :cond_45

    .line 1225
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1227
    :cond_45
    iput-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-void
.end method

.method private applyRemoteInputAndSmartReply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 7

    .line 1167
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-nez v0, :cond_5

    return-void

    .line 1171
    :cond_5
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->hasFreeformRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 1173
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    const-string v1, "NotificationContentView"

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    if-nez v0, :cond_20

    .line 1174
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->DEBUG:Z

    if-eqz p0, :cond_1f

    const-string p0, "Both expanded, and heads-up InflatedSmartReplies are null, don\'t add smart replies."

    .line 1175
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void

    .line 1184
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    if-eqz v0, :cond_29

    .line 1185
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->getSmartRepliesAndActions()Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    move-result-object v0

    goto :goto_2f

    .line 1186
    :cond_29
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->getSmartRepliesAndActions()Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    move-result-object v0

    :goto_2f
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartRepliesAndActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    .line 1187
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->DEBUG:Z

    if-eqz v0, :cond_70

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1188
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 1189
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    .line 1190
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartRepliesAndActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    if-nez v4, :cond_4a

    move v4, v3

    goto :goto_50

    .line 1191
    :cond_4a
    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 1190
    :goto_50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x2

    .line 1192
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartRepliesAndActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    if-nez v4, :cond_5e

    goto :goto_61

    .line 1193
    :cond_5e
    iget-object v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:[Ljava/lang/CharSequence;

    array-length v3, v3

    .line 1192
    :goto_61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "Adding suggestions for %s, %d actions, and %d replies."

    .line 1188
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_70
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartRepliesAndActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applySmartReplyView(Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private applySmartReplyView(Landroid/view/View;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .registers 7

    const p0, 0x102043d

    .line 1339
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 1341
    instance-of p1, p0, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    if-nez p1, :cond_d

    return-object v0

    .line 1345
    :cond_d
    check-cast p0, Landroid/widget/LinearLayout;

    .line 1346
    invoke-static {p3, p2}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->shouldShowSmartReplyView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Z

    move-result p1

    if-nez p1, :cond_1b

    const/16 p1, 0x8

    .line 1347
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object v0

    .line 1352
    :cond_1b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_2e

    .line 1353
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz p1, :cond_2e

    .line 1356
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1358
    :cond_2e
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_43

    if-eqz p4, :cond_43

    .line 1360
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->getSmartReplyView()Lcom/android/systemui/statusbar/policy/SmartReplyView;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 1361
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->getSmartReplyView()Lcom/android/systemui/statusbar/policy/SmartReplyView;

    move-result-object v0

    .line 1362
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_43
    if-eqz v0, :cond_5d

    .line 1365
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->resetSmartSuggestions(Landroid/view/View;)V

    .line 1367
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->getSmartSuggestionButtons()Ljava/util/List;

    move-result-object p1

    .line 1366
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->addPreInflatedButtons(Ljava/util/List;)V

    .line 1369
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getCurrentBackgroundTint()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(I)V

    .line 1370
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5d
    return-object v0
.end method

.method private applySmartReplyView(Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 11

    .line 1306
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_56

    .line 1307
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applySmartReplyView(Landroid/view/View;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)Lcom/android/systemui/statusbar/policy/SmartReplyView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 1309
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v0, :cond_56

    .line 1310
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    if-nez v0, :cond_18

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    if-eqz v0, :cond_56

    .line 1312
    :cond_18
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    move v4, v1

    goto :goto_23

    .line 1313
    :cond_1f
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:[Ljava/lang/CharSequence;

    array-length v0, v0

    move v4, v0

    .line 1314
    :goto_23
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    if-nez v0, :cond_29

    move v5, v1

    goto :goto_30

    .line 1315
    :cond_29
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v5, v0

    .line 1316
    :goto_30
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    if-nez v0, :cond_39

    .line 1317
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->fromAssistant:Z

    goto :goto_3b

    .line 1318
    :cond_39
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->fromAssistant:Z

    :goto_3b
    move v6, v0

    .line 1319
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    if-eqz v0, :cond_4f

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    .line 1322
    invoke-virtual {v0}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v0

    .line 1320
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getEffectiveEditChoicesBeforeSending(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v1, 0x1

    :cond_4f
    move v7, v1

    .line 1324
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/SmartReplyController;->smartSuggestionsAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;IIZZ)V

    .line 1329
    :cond_56
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getShowInHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1330
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applySmartReplyView(Landroid/view/View;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)Lcom/android/systemui/statusbar/policy/SmartReplyView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    :cond_6c
    return-void
.end method

.method private calculateTransformationAmount()F
    .registers 6

    .line 691
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    .line 692
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v1

    .line 693
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, v1, v0

    .line 694
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    if-nez v3, :cond_59

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the total transformation distance is 0\n StartType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n VisibleType: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n mContentHeight: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NotificationContentView"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_59
    int-to-float p0, v2

    int-to-float v0, v3

    div-float/2addr p0, v0

    .line 703
    invoke-static {v4, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private fireExpandedVisibleListenerIfVisible()V
    .registers 3

    .line 838
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 839
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1e

    .line 840
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 841
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 842
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1e
    return-void
.end method

.method private focusExpandButtonIfNecessary()V
    .registers 2

    .line 540
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mFocusOnVisibilityChange:Z

    if-eqz v0, :cond_16

    .line 541
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 543
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getExpandButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 545
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestAccessibilityFocus()Z

    :cond_13
    const/4 v0, 0x0

    .line 548
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mFocusOnVisibilityChange:Z

    :cond_16
    return-void
.end method

.method private forceUpdateVisibilities()V
    .registers 4

    .line 827
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 828
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 829
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 830
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 831
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    const/4 v0, -0x1

    .line 834
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    return-void
.end method

.method private forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    .line 850
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_f

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne p0, p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    move p0, v1

    :goto_10
    if-nez p0, :cond_17

    const/4 p0, 0x4

    .line 853
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a

    .line 855
    :cond_17
    invoke-interface {p3, v1}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    :goto_1a
    return-void
.end method

.method private getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I
    .registers 3

    if-eqz p1, :cond_1a

    .line 303
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isSending()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 304
    :cond_e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x105019a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private getMinContentHeightHint()I
    .registers 7

    .line 588
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    const v1, 0x1050191

    if-eqz v0, :cond_19

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 589
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 594
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_5e

    .line 596
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isTransitioningFromTo(II)Z

    move-result v0

    if-nez v0, :cond_33

    .line 597
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isTransitioningFromTo(II)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_33

    :cond_31
    move v0, v2

    goto :goto_34

    :cond_33
    :goto_33
    move v0, v4

    .line 598
    :goto_34
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v5

    if-nez v5, :cond_4c

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    if-nez v5, :cond_42

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v5, :cond_4c

    :cond_42
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 600
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result v5

    if-eqz v5, :cond_4c

    move v5, v4

    goto :goto_4d

    :cond_4c
    move v5, v2

    :goto_4d
    if-nez v0, :cond_51

    if-eqz v5, :cond_5e

    .line 602
    :cond_51
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    .line 603
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result p0

    .line 602
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 608
    :cond_5e
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-ne v0, v4, :cond_73

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeightAtAnimationStart:I

    if-ltz v0, :cond_73

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v5, :cond_73

    .line 610
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 614
    :cond_73
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_82

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 615
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    goto :goto_9a

    .line 616
    :cond_82
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_8b

    .line 617
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    goto :goto_9a

    .line 619
    :cond_8b
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 620
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 624
    :goto_9a
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_ac

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 625
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_ac
    return v0
.end method

.method private getRemoteInputForView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .registers 3

    .line 1763
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 1764
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object p0

    .line 1765
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-ne p1, v0, :cond_e

    .line 1766
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    .line 967
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 965
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    return-object p0

    .line 963
    :cond_f
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 961
    :cond_12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0
.end method

.method private getViewForVisibleType(I)Landroid/view/View;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    .line 984
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object p0

    .line 982
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    return-object p0

    .line 980
    :cond_f
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object p0

    .line 978
    :cond_12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object p0
.end method

.method private getViewHeight(I)I
    .registers 3

    const/4 v0, 0x0

    .line 724
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result p0

    return p0
.end method

.method private getViewHeight(IZ)I
    .registers 5

    .line 728
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 729
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 730
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 732
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getHeaderTranslation(Z)I

    move-result p0

    add-int/2addr v0, p0

    :cond_21
    return v0
.end method

.method private getVisualTypeForHeight(F)I
    .registers 6

    .line 1031
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    if-nez v0, :cond_15

    .line 1032
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-nez v3, :cond_15

    return v2

    .line 1035
    :cond_15
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    if-nez v3, :cond_25

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v3, :cond_25

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isGroupExpanded()Z

    move-result v3

    if-nez v3, :cond_25

    const/4 p0, 0x3

    return p0

    .line 1039
    :cond_25
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v3

    if-nez v3, :cond_35

    :cond_31
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v3, :cond_50

    :cond_35
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1041
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v1, 0x2

    .line 1042
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-lez p0, :cond_4f

    if-eqz v0, :cond_4e

    goto :goto_4f

    :cond_4e
    return v2

    :cond_4f
    :goto_4f
    return v1

    :cond_50
    if-nez v0, :cond_73

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_72

    .line 1049
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_72

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz p1, :cond_73

    .line 1050
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isGroupExpanded()Z

    move-result p1

    if-nez p1, :cond_73

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1051
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result p0

    if-nez p0, :cond_72

    goto :goto_73

    :cond_72
    return v2

    :cond_73
    :goto_73
    return v1
.end method

.method private getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .registers 3

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 409
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 411
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-ne p1, v0, :cond_e

    .line 412
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 414
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-ne p1, v0, :cond_15

    .line 415
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private initCustomChildPaddingSize()V
    .registers 3

    .line 1839
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_background_custom_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCustomPaddingLeft:I

    .line 1841
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_background_custom_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCustomPaddingTop:I

    .line 1843
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_background_custom_padding_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCustomPaddingRight:I

    .line 1845
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_background_custom_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCustomPaddingBottom:I

    return-void
.end method

.method private isContentViewInactive(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 1673
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1674
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_19

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object p0

    if-eq p0, p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :cond_1a
    :goto_1a
    return v0
.end method

.method public static isCustomNotification(Landroid/view/View;Landroid/service/notification/StatusBarNotification;Z)Z
    .registers 5

    if-eqz p0, :cond_29

    .line 1861
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x102045e

    if-eq v0, v1, :cond_29

    .line 1862
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0xa0a0114

    if-eq v0, v1, :cond_29

    instance-of p0, p0, Landroid/view/NotificationHeaderView;

    if-nez p0, :cond_29

    .line 1864
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.meizu.cloud"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    if-eqz p2, :cond_27

    goto :goto_29

    :cond_27
    const/4 p0, 0x1

    return p0

    :cond_29
    :goto_29
    const/4 p0, 0x0

    return p0
.end method

.method private isGroupExpanded()Z
    .registers 2

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method private isTransitioningFromTo(II)Z
    .registers 4

    .line 631
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v0, p1, :cond_8

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    if-ne v0, p1, :cond_e

    :cond_8
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-ne p0, p2, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private isVisibleOrTransitioning(I)Z
    .registers 3

    .line 636
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-eq v0, p1, :cond_f

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v0, p1, :cond_f

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    if-ne p0, p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private selectLayout(ZZ)V
    .registers 7

    .line 789
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 792
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    if-eqz v0, :cond_d

    .line 793
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateContentTransformation()V

    goto :goto_62

    .line 795
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->calculateVisibleType()I

    move-result v0

    .line 796
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v3

    :goto_1a
    if-nez v1, :cond_1e

    if-eqz p2, :cond_62

    .line 798
    :cond_1e
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2a

    .line 800
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 801
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->transferRemoteInputFocus(I)V

    :cond_2a
    if-eqz p1, :cond_46

    if-ne v0, v2, :cond_32

    .line 804
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez p2, :cond_42

    :cond_32
    const/4 p2, 0x2

    if-ne v0, p2, :cond_39

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-nez p2, :cond_42

    :cond_39
    const/4 p2, 0x3

    if-ne v0, p2, :cond_40

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-nez p2, :cond_42

    :cond_40
    if-nez v0, :cond_46

    .line 808
    :cond_42
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->animateToVisibleType(I)V

    goto :goto_49

    .line 810
    :cond_46
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibilities(I)V

    .line 812
    :goto_49
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-eqz v1, :cond_50

    .line 814
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->focusExpandButtonIfNecessary()V

    .line 816
    :cond_50
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p2

    if-eqz p2, :cond_5f

    .line 818
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 819
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinContentHeightHint()I

    move-result v1

    .line 818
    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setContentHeight(II)V

    .line 821
    :cond_5f
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    :cond_62
    :goto_62
    return-void
.end method

.method private setVisible(Z)V
    .registers 3

    if-eqz p1, :cond_15

    .line 529
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 532
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_21

    .line 534
    :cond_15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 p1, 0x0

    .line 535
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimate:Z

    :goto_21
    return-void
.end method

.method private shouldClipToRounding(IZZ)Z
    .registers 4

    .line 1718
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1722
    :cond_8
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->shouldClipToRounding(ZZ)Z

    move-result p0

    return p0
.end method

.method private shouldContractedBeFixedSize()Z
    .registers 2

    .line 345
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mBeforeN:Z

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    instance-of p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private transferRemoteInputFocus(I)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_18

    .line 942
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_18

    .line 944
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 945
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    :cond_18
    const/4 v0, 0x1

    if-ne p1, v0, :cond_30

    .line 947
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz p1, :cond_30

    .line 949
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 950
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    :cond_30
    return-void
.end method

.method private updateAllSingleLineViews()V
    .registers 1

    .line 1132
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateSingleLineView()V

    return-void
.end method

.method private updateBackgroundTransformation(F)V
    .registers 4

    .line 674
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getBackgroundColor(I)I

    move-result v0

    .line 675
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getBackgroundColor(I)I

    move-result v1

    if-eq v0, v1, :cond_22

    if-nez v1, :cond_16

    .line 678
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result v1

    :cond_16
    if-nez v0, :cond_1e

    .line 681
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result v0

    .line 683
    :cond_1e
    invoke-static {v1, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 686
    :cond_22
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundAlpha(F)V

    .line 687
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    return-void
.end method

.method private updateClipping()V
    .registers 6

    .line 772
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipToActualHeight:Z

    if-eqz v0, :cond_2d

    .line 773
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipTopAmount:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 774
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 775
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 776
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 777
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_31

    :cond_2d
    const/4 v0, 0x0

    .line 779
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_31
    return-void
.end method

.method private updateContentTransformation()V
    .registers 7

    .line 641
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->calculateVisibleType()I

    move-result v0

    .line 642
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_29

    .line 644
    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 645
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    .line 646
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v3

    const/4 v4, 0x0

    .line 648
    invoke-interface {v1, v3, v4}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 649
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 650
    invoke-interface {v3, v1, v4}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 651
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    const/4 v1, 0x1

    .line 652
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    .line 654
    :cond_29
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    if-eqz v1, :cond_30

    .line 655
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibilities()V

    .line 657
    :cond_30
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_59

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-eq v3, v1, :cond_59

    .line 659
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 660
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    .line 661
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    .line 663
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->calculateTransformationAmount()F

    move-result v2

    .line 664
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 665
    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 666
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundTransformation(F)V

    goto :goto_5f

    .line 668
    :cond_59
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibilities(I)V

    .line 669
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    :goto_5f
    return-void
.end method

.method private updateContractedHeaderWidth()Z
    .registers 7

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    .line 315
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v3, 0x1

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 316
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 317
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object p0

    .line 319
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getHeaderTextMarginEnd()I

    move-result p0

    .line 320
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getHeaderTextMarginEnd()I

    move-result v2

    if-eq p0, v2, :cond_57

    .line 321
    invoke-virtual {v0, p0}, Landroid/view/NotificationHeaderView;->setHeaderTextMarginEnd(I)V

    return v3

    .line 325
    :cond_2a
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationContentMarginEnd:I

    .line 326
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v2

    if-eq v2, p0, :cond_57

    .line 328
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_3a

    move v2, p0

    goto :goto_3e

    .line 330
    :cond_3a
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v2

    .line 331
    :goto_3e
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v4

    .line 332
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 333
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result p0

    .line 335
    :cond_4c
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v5

    .line 327
    invoke-virtual {v0, v2, v4, p0, v5}, Landroid/view/NotificationHeaderView;->setPadding(IIII)V

    .line 336
    invoke-virtual {v0, v1}, Landroid/view/NotificationHeaderView;->setShowWorkBadgeAtEnd(Z)V

    return v3

    :cond_57
    return v1
.end method

.method private updateIconVisibilities()V
    .registers 3

    .line 1597
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_15

    .line 1598
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1600
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIconsVisible:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    .line 1603
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_2a

    .line 1604
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1606
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIconsVisible:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    .line 1609
    :cond_2a
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_3f

    .line 1610
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 1612
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIconsVisible:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    :cond_3f
    return-void
.end method

.method private updateLegacy()V
    .registers 3

    .line 1083
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1084
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setLegacy(Z)V

    .line 1086
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 1087
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setLegacy(Z)V

    .line 1089
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 1090
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setLegacy(Z)V

    :cond_21
    return-void
.end method

.method private updateSingleLineView()V
    .registers 5

    .line 1136
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_26

    .line 1137
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 1138
    :goto_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 1139
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 1138
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->bindFromNotification(Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v0, :cond_30

    .line 1141
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    goto :goto_30

    .line 1144
    :cond_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v0, :cond_30

    .line 1145
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1146
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    :cond_30
    :goto_30
    return-void
.end method

.method private updateViewVisibilities(I)V
    .registers 5

    .line 898
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 900
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 902
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v2, 0x2

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 904
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 906
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    const/4 p1, -0x1

    .line 909
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    return-void
.end method

.method private updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V
    .registers 5

    if-eqz p3, :cond_a

    if-ne p1, p2, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    .line 915
    :goto_7
    invoke-interface {p4, p0}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    :cond_a
    return-void
.end method

.method private updateVisibility()V
    .registers 2

    .line 516
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public buildContentContainer(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
    .registers 6

    .line 1850
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isCustomNotification(Landroid/view/View;Landroid/service/notification/StatusBarNotification;Z)Z

    move-result p2

    if-nez p2, :cond_11

    const/4 p2, 0x0

    .line 1851
    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-object p1

    .line 1855
    :cond_11
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCustomPaddingLeft:I

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCustomPaddingTop:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCustomPaddingRight:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCustomPaddingBottom:I

    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-object p1
.end method

.method public calculateVisibleType()I
    .registers 3

    .line 1005
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    if-eqz v0, :cond_50

    .line 1007
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_23

    .line 1006
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isGroupExpanded()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x1

    .line 1007
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_23

    .line 1009
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    move-result v0

    goto :goto_29

    .line 1008
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxContentHeight()I

    move-result v0

    :goto_29
    if-nez v0, :cond_2d

    .line 1011
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    :cond_2d
    int-to-float v0, v0

    .line 1013
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v0

    .line 1014
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v1, :cond_3e

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isGroupExpanded()Z

    move-result v1

    if-nez v1, :cond_3e

    const/4 v1, 0x3

    goto :goto_49

    .line 1016
    :cond_3e
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v1

    .line 1017
    :goto_49
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne p0, v1, :cond_4e

    goto :goto_4f

    :cond_4e
    move v0, v1

    :goto_4f
    return v0

    .line 1021
    :cond_50
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    .line 1022
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    if-eqz v0, :cond_5e

    .line 1025
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_5e
    int-to-float v0, v1

    .line 1027
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result p0

    return p0
.end method

.method public closeRemoteInput()V
    .registers 2

    .line 1413
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_7

    .line 1414
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    .line 1416
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz p0, :cond_e

    .line 1417
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    :cond_e
    return-void
.end method

.method public disallowSingleClick(FF)Z
    .registers 4

    .line 1700
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1702
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->disallowSingleClick(FF)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1737
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 1740
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getRemoteInputForView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 1741
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_34

    .line 1742
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1743
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_34

    int-to-float v3, v2

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_34

    const/4 p0, 0x0

    neg-int v0, v2

    int-to-float v0, v0

    .line 1744
    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1745
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1748
    :cond_34
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, "    "

    .line 1815
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1816
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "contentView visibility: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1817
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ", alpha: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1818
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", clipBounds: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1819
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", contentHeight: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1820
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", visibleType: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1821
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object p0

    const-string p1, ", visibleView "

    .line 1822
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p0, :cond_cb

    .line 1824
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " visibility: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1825
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1826
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_d0

    :cond_cb
    const-string p0, "null"

    .line 1828
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1830
    :goto_d0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getActiveRemoteInputText()Ljava/lang/CharSequence;
    .registers 2

    .line 1726
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1727
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1729
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1730
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackgroundColor(I)I
    .registers 2

    .line 889
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 892
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public getContractedChild()Landroid/view/View;
    .registers 1

    .line 372
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object p0
.end method

.method public getCurrentSmartRepliesAndActions()Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;
    .registers 1

    .line 1409
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartRepliesAndActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    return-object p0
.end method

.method public getExpandHeight()I
    .registers 3

    .line 1773
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    .line 1776
    :goto_7
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getExpandedChild()Landroid/view/View;
    .registers 1

    .line 376
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object p0
.end method

.method public getExpandedRemoteInput()Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .registers 1

    .line 1834
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object p0
.end method

.method public getHeadsUpChild()Landroid/view/View;
    .registers 1

    .line 380
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object p0
.end method

.method public getHeadsUpHeight(Z)I
    .registers 3

    .line 1781
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, 0x2

    .line 1786
    :goto_7
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1787
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1788
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public getMaxHeight()I
    .registers 3

    .line 711
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 712
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 713
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result p0

    :goto_f
    add-int/2addr v0, p0

    return v0

    .line 714
    :cond_11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x2

    .line 715
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 716
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result p0

    goto :goto_f

    .line 717
    :cond_2d
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    .line 718
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result p0

    return p0

    .line 720
    :cond_37
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationMaxHeight:I

    return p0
.end method

.method public getMinHeight()I
    .registers 2

    const/4 v0, 0x0

    .line 738
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    move-result p0

    return p0
.end method

.method public getMinHeight(Z)I
    .registers 2

    if-nez p1, :cond_14

    .line 742
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz p1, :cond_14

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isGroupExpanded()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_14

    .line 746
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0

    .line 743
    :cond_14
    :goto_14
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz p1, :cond_1e

    const/4 p1, 0x0

    .line 744
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result p0

    goto :goto_20

    :cond_1e
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMinContractedHeight:I

    :goto_20
    return p0
.end method

.method public getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;
    .registers 1

    .line 1550
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    return-object p0
.end method

.method public getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;
    .registers 2

    .line 1505
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    .line 1506
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method public getVisibleType()I
    .registers 1

    .line 875
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    return p0
.end method

.method public getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .registers 3

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 993
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 991
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 995
    :cond_10
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public initView()V
    .registers 3

    .line 178
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->min_notification_layout_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMinContractedHeight:I

    .line 180
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationContentMarginEnd:I

    return-void
.end method

.method isAnimatingVisibleType()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1579
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isContentExpandable()Z
    .registers 1

    .line 1060
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsContentExpandable:Z

    return p0
.end method

.method public isContentViewInactive(I)Z
    .registers 2

    .line 1659
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object p1

    .line 1660
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isContentViewInactive(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public isDimmable()Z
    .registers 1

    .line 1693
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->isDimmable()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 367
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateVisibility()V

    return-void
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;II)V
    .registers 4

    .line 1679
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onChildVisibilityChanged(Landroid/view/View;II)V

    .line 1680
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isContentViewInactive(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 1681
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_16

    .line 1683
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_16
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 521
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 522
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 352
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    .line 354
    :goto_b
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz v0, :cond_1a

    .line 355
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-eq p1, v0, :cond_1a

    .line 356
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 358
    :cond_1a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    .line 359
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 360
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    .line 361
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    .line 362
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandable:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtons(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 19

    move-object/from16 v6, p0

    .line 192
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x40000000  # 2.0f

    if-ne v0, v9, :cond_e

    move v1, v7

    goto :goto_f

    :cond_e
    move v1, v8

    :goto_f
    const/high16 v10, -0x80000000

    if-ne v0, v10, :cond_15

    move v0, v7

    goto :goto_16

    :cond_15
    move v0, v8

    :goto_16
    const v2, 0x3fffffff  # 1.9999999f

    .line 196
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    if-nez v1, :cond_21

    if-eqz v0, :cond_25

    .line 198
    :cond_21
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    :cond_25
    move v12, v2

    .line 201
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_6d

    .line 202
    iget v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationMaxHeight:I

    .line 203
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v1, :cond_35

    .line 204
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getHeightUpperLimit()I

    move-result v1

    add-int/2addr v0, v1

    .line 206
    :cond_35
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExtraMeasureHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 208
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 210
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v1, :cond_4c

    .line 212
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v7

    goto :goto_4d

    :cond_4c
    move v1, v8

    :goto_4d
    if-eqz v1, :cond_51

    move v1, v9

    goto :goto_52

    :cond_51
    move v1, v10

    .line 215
    :goto_52
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 218
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 219
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v13, v0

    goto :goto_6e

    :cond_6d
    move v13, v8

    .line 221
    :goto_6e
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_102

    .line 225
    iget v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmallHeight:I

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 227
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 229
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v1, :cond_89

    .line 231
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    move v0, v7

    goto :goto_8b

    :cond_89
    move v1, v0

    move v0, v8

    .line 234
    :goto_8b
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->shouldContractedBeFixedSize()Z

    move-result v2

    if-nez v2, :cond_99

    if-eqz v0, :cond_94

    goto :goto_99

    .line 237
    :cond_94
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_9d

    .line 235
    :cond_99
    :goto_99
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_9d
    move v14, v0

    .line 239
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 240
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 241
    iget v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMinContractedHeight:I

    if-ge v15, v0, :cond_c5

    .line 242
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 243
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_c6

    :cond_c5
    move v4, v14

    .line 245
    :goto_c6
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 246
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateContractedHeaderWidth()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 247
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 249
    :cond_db
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_102

    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_102

    .line 252
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 254
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 257
    :cond_102
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_146

    .line 258
    iget v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpHeight:I

    .line 259
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v1, :cond_111

    .line 260
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getHeightUpperLimit()I

    move-result v1

    add-int/2addr v0, v1

    .line 262
    :cond_111
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExtraMeasureHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 264
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 266
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v1, :cond_127

    .line 268
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_128

    :cond_127
    move v7, v8

    .line 271
    :goto_128
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v7, :cond_12f

    move v2, v9

    goto :goto_130

    :cond_12f
    move v2, v10

    .line 272
    :goto_130
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    .line 271
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 274
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 276
    :cond_146
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v0, :cond_17b

    .line 278
    iget v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineWidthIndention:I

    if-eqz v0, :cond_164

    .line 279
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_164

    .line 280
    iget v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineWidthIndention:I

    sub-int v0, v11, v0

    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 281
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v1

    add-int/2addr v0, v1

    .line 280
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_166

    :cond_164
    move/from16 v0, p1

    .line 284
    :goto_166
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    iget v2, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationMaxHeight:I

    .line 285
    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 284
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 286
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 288
    :cond_17b
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    invoke-virtual {v6, v11, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNotificationUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 5

    .line 1109
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 1110
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1111
    iget v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-ge v0, v2, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mBeforeN:Z

    .line 1112
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateAllSingleLineViews()V

    .line 1113
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    .line 1114
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v2, :cond_25

    .line 1115
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 1117
    :cond_25
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v2, :cond_2e

    .line 1118
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 1120
    :cond_2e
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v2, :cond_37

    .line 1121
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 1123
    :cond_37
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyRemoteInputAndSmartReply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 1124
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyMediaTransfer(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 1125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateLegacy()V

    .line 1126
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    const/4 p1, 0x0

    .line 1127
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 1128
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 3

    .line 498
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 499
    sget v0, Lcom/android/systemui/R$id;->row_tag_for_content_view:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 2

    .line 1619
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_8

    .line 1621
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    :cond_8
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 504
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 505
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateVisibility()V

    if-eqz p2, :cond_27

    .line 508
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    .line 509
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_12

    .line 511
    :cond_22
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    :cond_27
    return-void
.end method

.method public performWhenContentInactive(ILjava/lang/Runnable;)V
    .registers 4

    .line 1642
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1644
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isContentViewInactive(I)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_13

    .line 1648
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1645
    :cond_13
    :goto_13
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public pointInView(FFF)Z
    .registers 7

    .line 1756
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipTopAmount:I

    int-to-float v0, v0

    .line 1757
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    int-to-float v1, v1

    neg-float v2, p3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_22

    sub-float/2addr v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_22

    .line 1758
    iget v0, p0, Landroid/widget/FrameLayout;->mRight:I

    iget p0, p0, Landroid/widget/FrameLayout;->mLeft:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    add-float/2addr p0, p3

    cmpg-float p0, p1, p0

    if-gez p0, :cond_22

    add-float/2addr v1, p3

    cmpg-float p0, p2, v1

    if-gez p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public reInflateViews()V
    .registers 2

    .line 1518
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v0, :cond_11

    .line 1519
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1520
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 1521
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateAllSingleLineViews()V

    :cond_11
    return-void
.end method

.method public requestSelectLayout(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 1514
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    return-void
.end method

.method public setBackgroundTintColor(I)V
    .registers 3

    .line 866
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v0, :cond_7

    .line 867
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(I)V

    .line 869
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz p0, :cond_e

    .line 870
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(I)V

    :cond_e
    return-void
.end method

.method public setClipBottomAmount(I)V
    .registers 2

    .line 761
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBottomAmount:I

    .line 762
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setClipChildren(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 1798
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputVisible:Z

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    .line 1799
    :goto_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    return-void
.end method

.method public setClipToActualHeight(Z)V
    .registers 2

    .line 784
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipToActualHeight:Z

    .line 785
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .registers 2

    .line 755
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipTopAmount:I

    .line 756
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setContainingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 2

    .line 1510
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method

.method public setContentHeight(I)V
    .registers 4

    .line 553
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 554
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 555
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 556
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 557
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    .line 558
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimate:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    .line 560
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez p1, :cond_31

    return-void

    .line 566
    :cond_31
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinContentHeightHint()I

    move-result p1

    .line 568
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 570
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setContentHeight(II)V

    .line 573
    :cond_42
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 575
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setContentHeight(II)V

    .line 578
    :cond_4f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    .line 579
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    return-void
.end method

.method public setContentHeightAnimating(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, -0x1

    .line 1573
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeightAtAnimationStart:I

    :cond_5
    return-void
.end method

.method public setContractedChild(Landroid/view/View;)V
    .registers 4

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 390
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_10
    if-nez p1, :cond_1f

    const/4 p1, 0x0

    .line 394
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 395
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 396
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    if-nez p1, :cond_1e

    const/4 p1, -0x1

    .line 397
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    :cond_1e
    return-void

    .line 401
    :cond_1f
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 402
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 403
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1430
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setExpandedChild(Landroid/view/View;)V
    .registers 5

    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    .line 427
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_32

    .line 429
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 433
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 437
    :cond_32
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 439
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    :cond_42
    if-nez p1, :cond_59

    .line 442
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 443
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 444
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_50

    const/4 p1, -0x1

    .line 445
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 447
    :cond_50
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-ne p1, v0, :cond_58

    const/4 p1, 0x0

    .line 448
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    :cond_58
    return-void

    .line 452
    :cond_59
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 453
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 454
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-void
.end method

.method public setExpandedInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)V
    .registers 2

    .line 1384
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 1386
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    :cond_7
    return-void
.end method

.method public setFocusOnVisibilityChange()V
    .registers 2

    const/4 v0, 0x1

    .line 1588
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mFocusOnVisibilityChange:Z

    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .registers 2

    .line 1422
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .registers 3

    .line 1803
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_7

    .line 1804
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    .line 1806
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_e

    .line 1807
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    .line 1809
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz p0, :cond_15

    .line 1810
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    :cond_15
    return-void
.end method

.method public setHeadsUp(Z)V
    .registers 3

    .line 1064
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1065
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    .line 1066
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandable:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtons(Z)V

    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .registers 3

    .line 1583
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpAnimatingAway:Z

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1584
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    return-void
.end method

.method public setHeadsUpChild(Landroid/view/View;)V
    .registers 5

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    .line 465
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 466
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_32

    .line 467
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 471
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 475
    :cond_32
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 476
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 477
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    :cond_42
    if-nez p1, :cond_5a

    .line 480
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 481
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 482
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_50

    const/4 p1, -0x1

    .line 483
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 485
    :cond_50
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-ne p1, v0, :cond_59

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 486
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    :cond_59
    return-void

    .line 490
    :cond_5a
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 491
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 492
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-void
.end method

.method public setHeadsUpInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)V
    .registers 2

    .line 1399
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 1401
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    :cond_7
    return-void
.end method

.method public setHeights(III)V
    .registers 4

    .line 185
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmallHeight:I

    .line 186
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpHeight:I

    .line 187
    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationMaxHeight:I

    return-void
.end method

.method public setIconsVisible(Z)V
    .registers 2

    .line 1592
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIconsVisible:Z

    .line 1593
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateIconVisibilities()V

    return-void
.end method

.method public setIsChildInGroup(Z)V
    .registers 3

    .line 1095
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    .line 1096
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz p1, :cond_d

    .line 1097
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1099
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz p1, :cond_18

    .line 1100
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1102
    :cond_18
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz p1, :cond_23

    .line 1103
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1105
    :cond_23
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateAllSingleLineViews()V

    return-void
.end method

.method public setIsLowPriority(Z)V
    .registers 2

    .line 1689
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsLowPriority:Z

    return-void
.end method

.method public setLegacy(Z)V
    .registers 2

    .line 1078
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mLegacy:Z

    .line 1079
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateLegacy()V

    return-void
.end method

.method public setOnExpandedVisibleListener(Ljava/lang/Runnable;)V
    .registers 2

    .line 1631
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 1632
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    return-void
.end method

.method public setRecentlyAudiblyAlerted(Z)V
    .registers 3

    .line 1486
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1487
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->setRecentlyAudiblyAlerted(Z)V

    .line 1489
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1490
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->setRecentlyAudiblyAlerted(Z)V

    .line 1492
    :cond_2a
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 1493
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/NotificationHeaderView;->setRecentlyAudiblyAlerted(Z)V

    :cond_3f
    return-void
.end method

.method public setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V
    .registers 2

    .line 1426
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    return-void
.end method

.method public setRemoteInputVisible(Z)V
    .registers 2

    .line 1792
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputVisible:Z

    xor-int/lit8 p1, p1, 0x1

    .line 1793
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setClipChildren(Z)V

    return-void
.end method

.method public setRemoved()V
    .registers 2

    .line 1554
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_7

    .line 1555
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    .line 1557
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_e

    .line 1558
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    .line 1560
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_15

    .line 1561
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRemoved()V

    .line 1563
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_1c

    .line 1564
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRemoved()V

    .line 1566
    :cond_1c
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz p0, :cond_23

    .line 1567
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRemoved()V

    :cond_23
    return-void
.end method

.method public setSingleLineWidthIndention(I)V
    .registers 3

    .line 1542
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineWidthIndention:I

    if-eq p1, v0, :cond_e

    .line 1543
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineWidthIndention:I

    .line 1544
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->forceLayout()V

    .line 1545
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->forceLayout()V

    :cond_e
    return-void
.end method

.method public setTranslationY(F)V
    .registers 2

    .line 767
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 768
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setUserExpanding(Z)V
    .registers 2

    .line 1526
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    if-eqz p1, :cond_9

    .line 1528
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    goto :goto_1b

    :cond_9
    const/4 p1, -0x1

    .line 1530
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 1531
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->calculateVisibleType()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 1532
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibilities(I)V

    const/4 p1, 0x0

    .line 1533
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    :goto_1b
    return-void
.end method

.method public shouldClipToRounding(ZZ)Z
    .registers 5

    .line 1708
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleType()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->shouldClipToRounding(IZZ)Z

    move-result v0

    .line 1709
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    if-eqz v1, :cond_13

    .line 1710
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v1, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->shouldClipToRounding(IZZ)Z

    move-result p0

    or-int/2addr v0, p0

    :cond_13
    return v0
.end method

.method public showAppOpsIcons(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1473
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1474
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1476
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1477
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1479
    :cond_2a
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 1480
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/NotificationHeaderView;->showAppOpsIcons(Landroid/util/ArraySet;)V

    :cond_3f
    return-void
.end method

.method public updateBackgroundColor(Z)V
    .registers 4

    .line 860
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getBackgroundColor(I)I

    move-result v0

    .line 861
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->resetBackgroundAlpha()V

    .line 862
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1, v0, p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    return-void
.end method

.method public updateExpandButtons(Z)V
    .registers 4

    .line 1434
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandable:Z

    .line 1436
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_3b

    .line 1437
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_2c

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1438
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_2c

    .line 1442
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    goto :goto_3b

    .line 1439
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_3b

    const/4 p1, 0x0

    .line 1446
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_46

    .line 1447
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1449
    :cond_46
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_51

    .line 1450
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1452
    :cond_51
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_5c

    .line 1453
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1455
    :cond_5c
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsContentExpandable:Z

    return-void
.end method
