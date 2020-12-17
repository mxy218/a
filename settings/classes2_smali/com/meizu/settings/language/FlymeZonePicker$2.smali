.class Lcom/meizu/settings/language/FlymeZonePicker$2;
.super Ljava/lang/Object;
.source "FlymeZonePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/language/FlymeZonePicker;->initLookupKeys(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/language/FlymeZonePicker;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/meizu/settings/language/FlymeZonePicker;Ljava/util/List;)V
    .registers 3

    .line 378
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeZonePicker$2;->this$0:Lcom/meizu/settings/language/FlymeZonePicker;

    iput-object p2, p0, Lcom/meizu/settings/language/FlymeZonePicker$2;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 382
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeZonePicker$2;->val$list:Ljava/util/List;

    if-eqz v0, :cond_38

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_38

    const/4 v0, 0x0

    move v1, v0

    .line 383
    :goto_c
    iget-object v2, p0, Lcom/meizu/settings/language/FlymeZonePicker$2;->val$list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 384
    iget-object v2, p0, Lcom/meizu/settings/language/FlymeZonePicker$2;->val$list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    iget-object v3, p0, Lcom/meizu/settings/language/FlymeZonePicker$2;->this$0:Lcom/meizu/settings/language/FlymeZonePicker;

    invoke-static {v3}, Lcom/meizu/settings/language/FlymeZonePicker;->access$400(Lcom/meizu/settings/language/FlymeZonePicker;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/settings/language/FlymeZonePicker$2;->this$0:Lcom/meizu/settings/language/FlymeZonePicker;

    invoke-static {v4, v2, v0}, Lcom/meizu/settings/language/FlymeZonePicker;->access$300(Lcom/meizu/settings/language/FlymeZonePicker;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_38
    return-void
.end method
