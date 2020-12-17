.class Lcom/meizu/common/widget/EnhanceGallery$3;
.super Ljava/lang/Object;
.source "EnhanceGallery.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/EnhanceGallery;->setUpChild(Landroid/view/View;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;)V
    .registers 2

    .line 1283
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 10

    .line 1287
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget p1, p1, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_9

    return v1

    .line 1290
    :cond_9
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/16 v2, 0x64

    const v3, 0x1020001

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x1

    if-eq p1, v2, :cond_8b

    packed-switch p1, :pswitch_data_ea

    goto/16 :goto_e8

    :pswitch_1c  #0x5, 0x6
    return v5

    .line 1308
    :pswitch_1d  #0x4
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v2, p1, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    iget v6, p1, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v6

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 1310
    instance-of v2, p1, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    if-eqz v2, :cond_46

    .line 1311
    move-object v2, p1

    check-cast v2, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    invoke-interface {v2}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 1313
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1315
    :cond_3a
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$500(Lcom/meizu/common/widget/EnhanceGallery;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1316
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_49

    .line 1319
    :cond_46
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1323
    :cond_49
    :goto_49
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result p2

    if-nez p2, :cond_57

    .line 1324
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget p2, p1, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    invoke-virtual {p1, p2, v5}, Lcom/meizu/common/widget/EnhanceGallery;->setItemChecked(IZ)V

    goto :goto_6d

    :cond_57
    if-eqz p1, :cond_6d

    .line 1326
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 1327
    instance-of p2, p1, Landroid/widget/Checkable;

    if-eqz p2, :cond_68

    .line 1328
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1330
    :cond_68
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery;->invalidateViews()V

    .line 1333
    :cond_6d
    :goto_6d
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iput v0, p1, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    .line 1336
    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery;->getCheckedItemCount()I

    move-result p1

    if-gtz p1, :cond_e8

    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_e8

    .line 1337
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {p0}, Lcom/meizu/common/widget/EnhanceGallery;->access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ActionMode;->finish()V

    goto :goto_e8

    :pswitch_89  #0x3
    return v1

    :pswitch_8a  #0x1, 0x2
    return v5

    .line 1342
    :cond_8b
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget p2, p1, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    iget v2, p1, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_c6

    .line 1344
    instance-of p2, p1, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    if-eqz p2, :cond_b4

    .line 1345
    move-object p2, p1

    check-cast p2, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    invoke-interface {p2}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a8

    .line 1347
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1349
    :cond_a8
    iget-object p2, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {p2}, Lcom/meizu/common/widget/EnhanceGallery;->access$500(Lcom/meizu/common/widget/EnhanceGallery;)Z

    move-result p2

    if-eqz p2, :cond_b7

    .line 1350
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_b7

    .line 1353
    :cond_b4
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1356
    :cond_b7
    :goto_b7
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_c6

    .line 1357
    instance-of p2, p1, Landroid/widget/Checkable;

    if-eqz p2, :cond_c6

    .line 1358
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1361
    :cond_c6
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {p1}, Lcom/meizu/common/widget/AbsSpinner;->requestLayout()V

    .line 1364
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery;->getCheckedItemCount()I

    move-result p1

    if-gtz p1, :cond_e4

    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_e4

    .line 1365
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 1366
    :cond_e4
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    :cond_e8
    :goto_e8
    return v5

    nop

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_8a  #00000001
        :pswitch_8a  #00000002
        :pswitch_89  #00000003
        :pswitch_1d  #00000004
        :pswitch_1c  #00000005
        :pswitch_1c  #00000006
    .end packed-switch
.end method
