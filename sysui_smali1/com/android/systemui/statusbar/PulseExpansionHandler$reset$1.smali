.class public final Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PulseExpansionHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/PulseExpansionHandler;->reset(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"
    }
    d2 = {
        "com/android/systemui/statusbar/PulseExpansionHandler$reset$1",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "name"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field final synthetic this$0:Lcom/android/systemui/statusbar/PulseExpansionHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ")V"
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$1;->this$0:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$1;->$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$1;->this$0:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$1;->$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->access$setUserLocked(Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void
.end method
