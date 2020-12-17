.class Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$4;
.super Ljava/lang/Object;
.source "CustomRingtonePicker.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;


# direct methods
.method constructor <init>(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)V
    .registers 2

    .line 373
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$4;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .registers 3

    .line 387
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$4;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$700(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Landroid/widget/AlphabetIndexer;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    goto :goto_14

    .line 388
    :cond_a
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$4;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    .line 387
    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$700(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Landroid/widget/AlphabetIndexer;

    move-result-object p0

    .line 388
    invoke-virtual {p0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result p0

    :goto_14
    return p0
.end method

.method public getSectionForPosition(I)I
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$4;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$700(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Landroid/widget/AlphabetIndexer;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    goto :goto_14

    .line 382
    :cond_a
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$4;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    .line 381
    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$700(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Landroid/widget/AlphabetIndexer;

    move-result-object p0

    .line 382
    invoke-virtual {p0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result p0

    :goto_14
    return p0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$4;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$700(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Landroid/widget/AlphabetIndexer;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    goto :goto_14

    :cond_a
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$4;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$700(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Landroid/widget/AlphabetIndexer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object p0

    :goto_14
    return-object p0
.end method
