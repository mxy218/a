.class Lcom/meizu/settings/language/FlymeCountryPicker$4;
.super Ljava/lang/Object;
.source "FlymeCountryPicker.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/language/FlymeCountryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/language/FlymeCountryPicker;


# direct methods
.method constructor <init>(Lcom/meizu/settings/language/FlymeCountryPicker;)V
    .registers 2

    .line 500
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker$4;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .registers 4

    const/4 v0, 0x0

    .line 521
    :try_start_1
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeCountryPicker$4;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    invoke-static {v1}, Lcom/meizu/settings/language/FlymeCountryPicker;->access$700(Lcom/meizu/settings/language/FlymeCountryPicker;)Lcom/meizu/settings/language/FlymeCountryPicker$MyAlphabetIndexerPlus;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_14

    .line 522
    :cond_a
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker$4;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    .line 521
    invoke-static {p0}, Lcom/meizu/settings/language/FlymeCountryPicker;->access$700(Lcom/meizu/settings/language/FlymeCountryPicker;)Lcom/meizu/settings/language/FlymeCountryPicker$MyAlphabetIndexerPlus;

    move-result-object p0

    .line 522
    invoke-virtual {p0, p1}, Lcom/meizu/widget/AlphabetIndexerPlus;->getPositionForSection(I)I

    move-result v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_15

    :goto_14
    return v0

    :catch_15
    move-exception p0

    .line 524
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public getSectionForPosition(I)I
    .registers 4

    const/4 v0, 0x0

    .line 510
    :try_start_1
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeCountryPicker$4;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    invoke-static {v1}, Lcom/meizu/settings/language/FlymeCountryPicker;->access$700(Lcom/meizu/settings/language/FlymeCountryPicker;)Lcom/meizu/settings/language/FlymeCountryPicker$MyAlphabetIndexerPlus;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_14

    .line 511
    :cond_a
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker$4;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    .line 510
    invoke-static {p0}, Lcom/meizu/settings/language/FlymeCountryPicker;->access$700(Lcom/meizu/settings/language/FlymeCountryPicker;)Lcom/meizu/settings/language/FlymeCountryPicker$MyAlphabetIndexerPlus;

    move-result-object p0

    .line 511
    invoke-virtual {p0, p1}, Lcom/meizu/widget/AlphabetIndexerPlus;->getSectionForPosition(I)I

    move-result v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_15

    :goto_14
    return v0

    :catch_15
    move-exception p0

    .line 513
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .line 504
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeCountryPicker$4;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    invoke-static {v0}, Lcom/meizu/settings/language/FlymeCountryPicker;->access$700(Lcom/meizu/settings/language/FlymeCountryPicker;)Lcom/meizu/settings/language/FlymeCountryPicker$MyAlphabetIndexerPlus;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    goto :goto_14

    :cond_a
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker$4;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    invoke-static {p0}, Lcom/meizu/settings/language/FlymeCountryPicker;->access$700(Lcom/meizu/settings/language/FlymeCountryPicker;)Lcom/meizu/settings/language/FlymeCountryPicker$MyAlphabetIndexerPlus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/widget/AlphabetIndexerPlus;->getSections()[Ljava/lang/Object;

    move-result-object p0

    :goto_14
    return-object p0
.end method
