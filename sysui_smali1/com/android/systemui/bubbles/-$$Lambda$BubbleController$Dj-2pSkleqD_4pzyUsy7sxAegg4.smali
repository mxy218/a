.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$Dj-2pSkleqD_4pzyUsy7sxAegg4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/BubbleController;

.field private final synthetic f$1:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$Dj-2pSkleqD_4pzyUsy7sxAegg4;->f$0:Lcom/android/systemui/bubbles/BubbleController;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$Dj-2pSkleqD_4pzyUsy7sxAegg4;->f$1:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    return-void
.end method


# virtual methods
.method public final onBubbleExpandChanged(ZLjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$Dj-2pSkleqD_4pzyUsy7sxAegg4;->f$0:Lcom/android/systemui/bubbles/BubbleController;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$Dj-2pSkleqD_4pzyUsy7sxAegg4;->f$1:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleController;->lambda$setExpandListener$1$BubbleController(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;ZLjava/lang/String;)V

    return-void
.end method
