.class public Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;
.super Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
.source "ContextualButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;
    }
.end annotation


# instance fields
.field private final mButtonData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    return-void
.end method

.method private getContextButtonIndex(I)I
    .registers 4

    const/4 v0, 0x0

    .line 140
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 141
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/statusbar/phone/ContextualButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getId()I

    move-result v1

    if-ne v1, p1, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public addButton(Lcom/android/systemui/statusbar/phone/ContextualButton;)V
    .registers 3

    .line 44
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->attachToGroup(Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;)V

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;-><init>(Lcom/android/systemui/statusbar/phone/ContextualButton;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 9

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "ContextualButtonGroup {"

    .line 122
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      getVisibleContextButton(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->getVisibleContextButton()Lcom/android/systemui/statusbar/phone/ContextualButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      isVisible(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      attached(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4f

    move v0, v3

    goto :goto_50

    :cond_4f
    move v0, v2

    :goto_50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      mButtonData [ "

    .line 126
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_66
    if-ltz v0, :cond_c6

    .line 128
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    .line 129
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/statusbar/phone/ContextualButton;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v4

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "            "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": markedVisible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->markedVisible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " visible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/statusbar/phone/ContextualButton;

    .line 131
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " attached="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_aa

    .line 132
    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_aa

    move v4, v3

    goto :goto_ab

    :cond_aa
    move v4, v2

    :goto_ab
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " alpha="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/statusbar/phone/ContextualButton;

    .line 133
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_66

    :cond_c6
    const-string p0, "      ]"

    .line 135
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    }"

    .line 136
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getVisibleContextButton()Lcom/android/systemui/statusbar/phone/ContextualButton;
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    .line 58
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->markedVisible:Z

    if-eqz v1, :cond_21

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/statusbar/phone/ContextualButton;

    return-object p0

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public setButtonVisibility(IZ)I
    .registers 9

    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->getContextButtonIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4c

    const/4 p1, 0x4

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    iput-boolean p2, v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->markedVisible:Z

    .line 85
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1f
    if-ltz p2, :cond_3d

    .line 87
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    if-nez v3, :cond_37

    .line 88
    iget-boolean v5, v4, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->markedVisible:Z

    if-eqz v5, :cond_37

    .line 89
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->setVisibility(I)V

    .line 90
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    move v3, v1

    goto :goto_3a

    .line 93
    :cond_37
    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->setVisibility(I)V

    :goto_3a
    add-int/lit8 p2, p2, -0x1

    goto :goto_1f

    .line 96
    :cond_3d
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/statusbar/phone/ContextualButton;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result p0

    return p0

    .line 77
    :cond_4c
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find the button id of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in context group"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateIcons()V
    .registers 2

    .line 115
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    .line 116
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/statusbar/phone/ContextualButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->updateIcon()V

    goto :goto_6

    :cond_18
    return-void
.end method
