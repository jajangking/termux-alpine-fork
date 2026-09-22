.class public abstract Lcom/termux/shared/data/IntentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getBundleString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_e

    .line 120
    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bundle[\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 126
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": `"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 131
    instance-of v3, v2, [I

    if-eqz v3, :cond_2

    .line 132
    check-cast v2, [I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 133
    :cond_2
    instance-of v3, v2, [B

    if-eqz v3, :cond_3

    .line 134
    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 135
    :cond_3
    instance-of v3, v2, [Z

    if-eqz v3, :cond_4

    .line 136
    check-cast v2, [Z

    invoke-static {v2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 137
    :cond_4
    instance-of v3, v2, [S

    if-eqz v3, :cond_5

    .line 138
    check-cast v2, [S

    invoke-static {v2}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 139
    :cond_5
    instance-of v3, v2, [J

    if-eqz v3, :cond_6

    .line 140
    check-cast v2, [J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 141
    :cond_6
    instance-of v3, v2, [F

    if-eqz v3, :cond_7

    .line 142
    check-cast v2, [F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 143
    :cond_7
    instance-of v3, v2, [D

    if-eqz v3, :cond_8

    .line 144
    check-cast v2, [D

    invoke-static {v2}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 145
    :cond_8
    instance-of v3, v2, [Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 146
    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 147
    :cond_9
    instance-of v3, v2, [Ljava/lang/CharSequence;

    if-eqz v3, :cond_a

    .line 148
    check-cast v2, [Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 149
    :cond_a
    instance-of v3, v2, [Landroid/os/Parcelable;

    if-eqz v3, :cond_b

    .line 150
    check-cast v2, [Landroid/os/Parcelable;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 151
    :cond_b
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_c

    .line 152
    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Lcom/termux/shared/data/IntentUtils;->getBundleString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 154
    :cond_c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    :goto_1
    const-string v2, "`"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 162
    :cond_d
    const-string p0, "\n]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 120
    :cond_e
    :goto_2
    const-string p0, "Bundle[]"

    return-object p0
.end method

.method public static getIntentString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/termux/shared/data/IntentUtils;->getBundleString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
