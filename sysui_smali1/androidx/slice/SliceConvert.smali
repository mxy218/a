.class public Landroidx/slice/SliceConvert;
.super Ljava/lang/Object;
.source "SliceConvert.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1c
.end annotation


# direct methods
.method public static unwrap(Landroidx/slice/Slice;)Landroid/app/slice/Slice;
    .registers 9

    if-eqz p0, :cond_108

    .line 52
    invoke-virtual {p0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_108

    .line 53
    :cond_a
    new-instance v0, Landroid/app/slice/Slice$Builder;

    .line 54
    invoke-virtual {p0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/slice/Slice;->getSpec()Landroidx/slice/SliceSpec;

    move-result-object v2

    invoke-static {v2}, Landroidx/slice/SliceConvert;->unwrap(Landroidx/slice/SliceSpec;)Landroid/app/slice/SliceSpec;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    .line 55
    invoke-virtual {p0}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 56
    invoke-virtual {p0}, Landroidx/slice/Slice;->getItemArray()[Landroidx/slice/SliceItem;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_29
    if-ge v3, v1, :cond_103

    aget-object v4, p0, v3

    .line 57
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_10a

    goto :goto_82

    :sswitch_3a
    const-string/jumbo v7, "slice"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    move v5, v2

    goto :goto_83

    :sswitch_45
    const-string v7, "input"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    const/4 v5, 0x2

    goto :goto_83

    :sswitch_4f
    const-string v7, "image"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    const/4 v5, 0x1

    goto :goto_83

    :sswitch_59
    const-string/jumbo v7, "text"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    const/4 v5, 0x4

    goto :goto_83

    :sswitch_64
    const-string v7, "long"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    const/4 v5, 0x6

    goto :goto_83

    :sswitch_6e
    const-string v7, "int"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    const/4 v5, 0x5

    goto :goto_83

    :sswitch_78
    const-string v7, "action"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    const/4 v5, 0x3

    goto :goto_83

    :cond_82
    :goto_82
    move v5, v6

    :goto_83
    packed-switch v5, :pswitch_data_128

    goto/16 :goto_ff

    .line 78
    :pswitch_88  #0x6
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v5

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/app/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    goto :goto_ff

    .line 75
    :pswitch_98  #0x5
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getInt()I

    move-result v5

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v5, v6, v4}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    goto :goto_ff

    .line 72
    :pswitch_a8  #0x4
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v5, v6, v4}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    goto :goto_ff

    .line 69
    :pswitch_b8  #0x3
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v6

    invoke-static {v6}, Landroidx/slice/SliceConvert;->unwrap(Landroidx/slice/Slice;)Landroid/app/slice/Slice;

    move-result-object v6

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v6, v4}, Landroid/app/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    goto :goto_ff

    .line 65
    :pswitch_cc  #0x2
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getRemoteInput()Landroid/app/RemoteInput;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v4

    .line 65
    invoke-virtual {v0, v5, v6, v4}, Landroid/app/slice/Slice$Builder;->addRemoteInput(Landroid/app/RemoteInput;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    goto :goto_ff

    .line 62
    :pswitch_dc  #0x1
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v5, v6, v4}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    goto :goto_ff

    .line 59
    :pswitch_f0  #0x0
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v5

    invoke-static {v5}, Landroidx/slice/SliceConvert;->unwrap(Landroidx/slice/Slice;)Landroid/app/slice/Slice;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/app/slice/Slice$Builder;->addSubSlice(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    :goto_ff
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_29

    .line 82
    :cond_103
    invoke-virtual {v0}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_108
    :goto_108
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_10a
    .sparse-switch
        -0x54d081ca -> :sswitch_78
        0x197ef -> :sswitch_6e
        0x32c67c -> :sswitch_64
        0x36452d -> :sswitch_59
        0x5faa95b -> :sswitch_4f
        0x5fb57ca -> :sswitch_45
        0x6873d92 -> :sswitch_3a
    .end sparse-switch

    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_f0  #00000000
        :pswitch_dc  #00000001
        :pswitch_cc  #00000002
        :pswitch_b8  #00000003
        :pswitch_a8  #00000004
        :pswitch_98  #00000005
        :pswitch_88  #00000006
    .end packed-switch
.end method

.method private static unwrap(Landroidx/slice/SliceSpec;)Landroid/app/slice/SliceSpec;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_4
    new-instance v0, Landroid/app/slice/SliceSpec;

    invoke-virtual {p0}, Landroidx/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/slice/SliceSpec;->getRevision()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/app/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static unwrap(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    if-eqz p0, :cond_1f

    .line 94
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceSpec;

    .line 95
    invoke-static {v1}, Landroidx/slice/SliceConvert;->unwrap(Landroidx/slice/SliceSpec;)Landroid/app/slice/SliceSpec;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    return-object v0
.end method

.method public static wrap(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;
    .registers 9

    const-string v0, "The icon resource isn\'t available."

    const-string v1, "SliceConvert"

    if-eqz p0, :cond_124

    .line 106
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_e

    goto/16 :goto_124

    .line 107
    :cond_e
    new-instance v2, Landroidx/slice/Slice$Builder;

    .line 108
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 109
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroidx/slice/Slice$Builder;

    .line 110
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getSpec()Landroid/app/slice/SliceSpec;

    move-result-object v3

    invoke-static {v3}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/SliceSpec;)Landroidx/slice/SliceSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slice/Slice$Builder;->setSpec(Landroidx/slice/SliceSpec;)Landroidx/slice/Slice$Builder;

    .line 111
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/slice/SliceItem;

    .line 112
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_126

    goto :goto_91

    :sswitch_4a
    const-string/jumbo v6, "slice"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    const/4 v5, 0x0

    goto :goto_91

    :sswitch_55
    const-string v6, "input"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    const/4 v5, 0x2

    goto :goto_91

    :sswitch_5f
    const-string v6, "image"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    const/4 v5, 0x1

    goto :goto_91

    :sswitch_69
    const-string/jumbo v6, "text"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    const/4 v5, 0x4

    goto :goto_91

    :sswitch_74
    const-string v6, "long"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    const/4 v5, 0x6

    goto :goto_91

    :sswitch_7e
    const-string v6, "int"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    const/4 v5, 0x5

    goto :goto_91

    :sswitch_88
    const-string v6, "action"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    const/4 v5, 0x3

    :cond_91
    :goto_91
    packed-switch v5, :pswitch_data_144

    goto :goto_31

    .line 141
    :pswitch_95  #0x6
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getLong()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v6, v3}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    goto :goto_31

    .line 138
    :pswitch_a5  #0x5
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getInt()I

    move-result v4

    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    goto/16 :goto_31

    .line 135
    :pswitch_b6  #0x4
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    goto/16 :goto_31

    .line 131
    :pswitch_c7  #0x3
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getSlice()Landroid/app/slice/Slice;

    move-result-object v5

    invoke-static {v5, p1}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object v5

    .line 132
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {v2, v4, v5, v3}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    goto/16 :goto_31

    .line 127
    :pswitch_dc  #0x2
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getRemoteInput()Landroid/app/RemoteInput;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v3

    .line 127
    invoke-virtual {v2, v4, v5, v3}, Landroidx/slice/Slice$Builder;->addRemoteInput(Landroid/app/RemoteInput;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    goto/16 :goto_31

    .line 118
    :pswitch_ed  #0x1
    :try_start_ed
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-static {p1, v4}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    .line 119
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v3

    .line 118
    invoke-virtual {v2, v4, v5, v3}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;
    :try_end_100
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ed .. :try_end_100} :catch_108
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_ed .. :try_end_100} :catch_102

    goto/16 :goto_31

    :catch_102
    move-exception v3

    .line 123
    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    :catch_108
    move-exception v3

    .line 121
    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 114
    :pswitch_10e  #0x0
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getSlice()Landroid/app/slice/Slice;

    move-result-object v4

    invoke-static {v4, p1}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    goto/16 :goto_31

    .line 145
    :cond_11f
    invoke-virtual {v2}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_124
    :goto_124
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_126
    .sparse-switch
        -0x54d081ca -> :sswitch_88
        0x197ef -> :sswitch_7e
        0x32c67c -> :sswitch_74
        0x36452d -> :sswitch_69
        0x5faa95b -> :sswitch_5f
        0x5fb57ca -> :sswitch_55
        0x6873d92 -> :sswitch_4a
    .end sparse-switch

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_10e  #00000000
        :pswitch_ed  #00000001
        :pswitch_dc  #00000002
        :pswitch_c7  #00000003
        :pswitch_b6  #00000004
        :pswitch_a5  #00000005
        :pswitch_95  #00000006
    .end packed-switch
.end method

.method private static wrap(Landroid/app/slice/SliceSpec;)Landroidx/slice/SliceSpec;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 150
    :cond_4
    new-instance v0, Landroidx/slice/SliceSpec;

    invoke-virtual {p0}, Landroid/app/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/slice/SliceSpec;->getRevision()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static wrap(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    if-eqz p0, :cond_1f

    .line 161
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/slice/SliceSpec;

    .line 162
    invoke-static {v1}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/SliceSpec;)Landroidx/slice/SliceSpec;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    return-object v0
.end method
