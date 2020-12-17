.class Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarStateListener"
.end annotation


# instance fields
.field private mState:I

.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$1;)V
    .registers 3

    .line 197
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    return-void
.end method


# virtual methods
.method public getCurrentState()I
    .registers 1

    .line 203
    iget p0, p0, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;->mState:I

    return p0
.end method

.method public onStateChanged(I)V
    .registers 2

    .line 208
    iput p1, p0, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;->mState:I

    .line 209
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;->mState:I

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    if-eqz p1, :cond_10

    .line 211
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleController;->collapseStack()V

    .line 213
    :cond_10
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->updateStack()V

    return-void
.end method
