.class Lcom/android/systemui/volume/ConfigurableTexts$2;
.super Ljava/lang/Object;
.source "ConfigurableTexts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ConfigurableTexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ConfigurableTexts;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ConfigurableTexts;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/android/systemui/volume/ConfigurableTexts$2;->this$0:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 88
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/volume/ConfigurableTexts$2;->this$0:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-static {v2}, Lcom/android/systemui/volume/ConfigurableTexts;->access$100(Lcom/android/systemui/volume/ConfigurableTexts;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 89
    iget-object v2, p0, Lcom/android/systemui/volume/ConfigurableTexts$2;->this$0:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-static {v2}, Lcom/android/systemui/volume/ConfigurableTexts;->access$100(Lcom/android/systemui/volume/ConfigurableTexts;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/volume/ConfigurableTexts$2;->this$0:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-static {v4}, Lcom/android/systemui/volume/ConfigurableTexts;->access$100(Lcom/android/systemui/volume/ConfigurableTexts;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/volume/ConfigurableTexts;->access$000(Lcom/android/systemui/volume/ConfigurableTexts;Landroid/widget/TextView;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 91
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/android/systemui/volume/ConfigurableTexts$2;->this$0:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-static {v1}, Lcom/android/systemui/volume/ConfigurableTexts;->access$200(Lcom/android/systemui/volume/ConfigurableTexts;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_5e

    .line 92
    iget-object v1, p0, Lcom/android/systemui/volume/ConfigurableTexts$2;->this$0:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-static {v1}, Lcom/android/systemui/volume/ConfigurableTexts;->access$200(Lcom/android/systemui/volume/ConfigurableTexts;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/volume/ConfigurableTexts$2;->this$0:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-static {v3}, Lcom/android/systemui/volume/ConfigurableTexts;->access$200(Lcom/android/systemui/volume/ConfigurableTexts;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/volume/ConfigurableTexts;->access$300(Lcom/android/systemui/volume/ConfigurableTexts;Landroid/widget/TextView;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_5e
    return-void
.end method