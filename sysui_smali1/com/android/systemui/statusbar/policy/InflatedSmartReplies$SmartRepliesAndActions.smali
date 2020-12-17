.class public Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;
.super Ljava/lang/Object;
.source "InflatedSmartReplies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartRepliesAndActions"
.end annotation


# instance fields
.field public final smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

.field public final smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;)V
    .registers 3

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    .line 289
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    return-void
.end method


# virtual methods
.method public getSmartActions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 297
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    if-nez p0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    :goto_b
    return-object p0
.end method

.method public getSmartReplies()[Ljava/lang/CharSequence;
    .registers 1

    .line 293
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    if-nez p0, :cond_8

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/CharSequence;

    goto :goto_a

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:[Ljava/lang/CharSequence;

    :goto_a
    return-object p0
.end method
