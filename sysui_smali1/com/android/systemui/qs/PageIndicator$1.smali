.class Lcom/android/systemui/qs/PageIndicator$1;
.super Ljava/lang/Object;
.source "PageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/PageIndicator;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/PageIndicator;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/android/systemui/qs/PageIndicator$1;->this$0:Lcom/android/systemui/qs/PageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator$1;->this$0:Lcom/android/systemui/qs/PageIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/PageIndicator;->access$002(Lcom/android/systemui/qs/PageIndicator;Z)Z

    .line 228
    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator$1;->this$0:Lcom/android/systemui/qs/PageIndicator;

    invoke-static {v0}, Lcom/android/systemui/qs/PageIndicator;->access$100(Lcom/android/systemui/qs/PageIndicator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_25

    .line 229
    iget-object p0, p0, Lcom/android/systemui/qs/PageIndicator$1;->this$0:Lcom/android/systemui/qs/PageIndicator;

    invoke-static {p0}, Lcom/android/systemui/qs/PageIndicator;->access$100(Lcom/android/systemui/qs/PageIndicator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->access$200(Lcom/android/systemui/qs/PageIndicator;I)V

    :cond_25
    return-void
.end method
