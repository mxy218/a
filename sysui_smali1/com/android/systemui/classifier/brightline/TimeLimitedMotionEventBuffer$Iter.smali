.class Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer$Iter;
.super Ljava/lang/Object;
.source "TimeLimitedMotionEventBuffer.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Iter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Landroid/view/MotionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;I)V
    .registers 3

    .line 193
    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer$Iter;->this$0:Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-static {p1}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;->access$000(Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Landroid/view/MotionEvent;)V
    .registers 2

    .line 239
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .registers 2

    .line 189
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer$Iter;->add(Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public hasNext()Z
    .registers 1

    .line 199
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public hasPrevious()Z
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public next()Landroid/view/MotionEvent;
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/MotionEvent;

    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 1

    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer$Iter;->next()Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public nextIndex()I
    .registers 1

    .line 219
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    return p0
.end method

.method public previous()Landroid/view/MotionEvent;
    .registers 1

    .line 214
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/MotionEvent;

    return-object p0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .registers 1

    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer$Iter;->previous()Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public previousIndex()I
    .registers 1

    .line 224
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    return p0
.end method

.method public remove()V
    .registers 1

    .line 229
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method

.method public set(Landroid/view/MotionEvent;)V
    .registers 2

    .line 234
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2

    .line 189
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/brightline/TimeLimitedMotionEventBuffer$Iter;->set(Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    throw p0
.end method
