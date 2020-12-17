.class public Lcom/meizu/common/util/InternalResUtils;
.super Ljava/lang/Object;
.source "InternalResUtils.java"


# direct methods
.method public static getInternalResId(ILjava/lang/String;)I
    .registers 5

    const/4 v0, -0x1

    if-eqz p1, :cond_6d

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_6d

    .line 34
    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_11

    return v0

    :cond_11
    const-string v2, "android"

    packed-switch p0, :pswitch_data_6e

    goto :goto_6d

    :pswitch_17  #0xb
    const-string p0, "drawable"

    .line 73
    invoke-static {v1, p1, p0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_6d

    :pswitch_1e  #0xa
    const-string p0, "color"

    .line 70
    invoke-static {v1, p1, p0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_6d

    :pswitch_25  #0x9
    const-string p0, "integer"

    .line 67
    invoke-static {v1, p1, p0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_6d

    :pswitch_2c  #0x8
    const-string p0, "array"

    .line 64
    invoke-static {v1, p1, p0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_6d

    :pswitch_33  #0x7
    const-string p0, "bool"

    .line 61
    invoke-static {v1, p1, p0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_6d

    :pswitch_3a  #0x6
    const-string/jumbo p0, "style"

    .line 58
    invoke-static {v1, p1, p0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_6d

    :pswitch_42  #0x5
    const-string p0, "layout"

    .line 55
    invoke-static {v1, p1, p0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_6d

    :pswitch_49  #0x4
    const-string p0, "attr"

    .line 52
    invoke-static {v1, p1, p0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_6d

    :pswitch_50  #0x3
    const-string/jumbo p0, "styleable"

    .line 49
    invoke-static {v1, p1, p0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_6d

    :pswitch_58  #0x2
    const-string/jumbo p0, "string"

    .line 46
    invoke-static {v1, p1, p0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_6d

    :pswitch_60  #0x1
    const-string p0, "dimen"

    .line 43
    invoke-static {v1, p1, p0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_6d

    :pswitch_67  #0x0
    const-string p0, "id"

    .line 40
    invoke-static {v1, p1, p0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_6d
    :goto_6d
    return v0

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_67  #00000000
        :pswitch_60  #00000001
        :pswitch_58  #00000002
        :pswitch_50  #00000003
        :pswitch_49  #00000004
        :pswitch_42  #00000005
        :pswitch_3a  #00000006
        :pswitch_33  #00000007
        :pswitch_2c  #00000008
        :pswitch_25  #00000009
        :pswitch_1e  #0000000a
        :pswitch_17  #0000000b
    .end packed-switch
.end method
